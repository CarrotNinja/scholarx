import os
from azure.core.credentials import AzureKeyCredential
from azure.ai.formrecognizer import DocumentAnalysisClient




endpoint = "https://myaiserver01.cognitiveservices.azure.com/"
key = "427cc4797d5641b59758bac4a1906897"

document_analysis_client = DocumentAnalysisClient(
    endpoint=endpoint, credential=AzureKeyCredential(key)
)

pdf_filename = "assets\ReportCard_RP1_203431826_Sherwani.pdf" #The location of the file


if os.name == "nt":  # Windows
    pdf_path = os.path.join("C:", pdf_filename)
else:  # macOS or Linux
    pdf_path = os.path.join("/", pdf_filename)

with open(pdf_path, "rb") as fd:
    document = fd.read()

poller = document_analysis_client.begin_analyze_document("prebuilt-layout", document)
result = poller.result()

weighted_marks = []
unweighted_marks = []
classes = []

for table_idx, table in enumerate(result.tables):
    if table_idx == 1:
        for cell in table.cells:
            if(cell.column_index==0 and cell.row_index!=0):
                subject = cell.content
                classes.append(subject)
            if cell.column_index == 4 and cell.row_index != 0:
                try:
                    if 'H' in subject or subject.startswith('AP') or subject.startswith('IB'):
                        weighted_marks.append(int(cell.content) + 7)  # Adding 7 points for weighted grade
                        unweighted_marks.append(int(cell.content))  # Unweighted grade
                    else:
                        unweighted_marks.append(int(cell.content))  # Unweighted grade
                except Exception as er:
                    pass
print("Classes: \n")
print(classes)

print("Weighted Marks: \n")
print(weighted_marks)

weighted_average = sum(weighted_marks) / len(weighted_marks) if weighted_marks else 0
print("Weighted Average Mark:", round(weighted_average, ndigits=2))

print("\nUnweighted Marks: \n")
print(unweighted_marks)

unweighted_average = sum(unweighted_marks) / len(unweighted_marks) if unweighted_marks else 0
print("Unweighted Average Mark:", round(unweighted_average, ndigits=2)) 