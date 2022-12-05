This is a template folder for writing a thesis or dissertation at the University of Alabama at Birmingham.

Author: 
Ethan Taylor
The University of Alabama at Birmingham
ethan.j.taylor96@gmail.com


This is based upon the formatting described in the UAB format manual, at the time of this writing this is stored at:
https://www.uab.edu/graduate/images/documents/resources/current_students/FormatManual.pdf

The UABclass.cls file defines all the formatting for this template, and this is auto-imported into the settings file which defines various packages and renewed commands that users may want, which is then imported into the main file which does the full compiling.

bibliography is where you should store all your bibtex entries for citations, and the uabthesis-plain.bst formats the references, but you can feel free to use a different bibliography style if you want.

Images should be stored in the images folder. Sections and other subfiles should be stored in the subfiles folder to be imported into main for final compiling of the document(via the \input).

An example file structure for this template:
main.tex
-settings.tex
--UABdissertationclass.cls
-*subfiles folder*
--abstract.tex
--chapter1.tex
--etc...

Hopefully that is as clear as possible on how I recommend structuring and inputting your files.

Let me know of any issues and suggest changes via github.