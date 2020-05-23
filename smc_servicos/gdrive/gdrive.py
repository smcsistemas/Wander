from pydrive.auth import GoogleAuth
from pydrive.drive import GoogleDrive

drive = GoogleAuth()
drive.LocalWebserverAuth()


file1 = drive.CreateFile({'title': 'Hello.txt'})
file1.SetContentString('Hello')
file1.Upload() # Files.insert()