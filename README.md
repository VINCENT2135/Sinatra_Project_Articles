HTTP Verb	Route	        Action	        Used For
GET	'/articles'	            index action	     index page to display all articles
GET	'/articles/new'	        new action	     displays create article form
POST	'/articles'	        create action	 creates one article
GET	'/articles/:id'	        show action	     displays one article based on ID in the url
GET	'/articles/:id/edit'edit action displays edit form based on ID in the url
PATCH	'/articles/:id'	update action	modifies an existing article based on ID in the url
PUT	'/articles/:id'	update action	replaces an existing article based on ID in the url
DELETE	'/articles/:id'	delete action	deletes one article based on ID in the url

The substitution tag evaluates Ruby code and then displays the results into the view. It opens with <%= and closes with %>. Inside of these tags, you can write any valid Ruby code that you want.

Scripting tags open with <% and close with %>. They evaluate –– but do not actually display –– Ruby code

The HTML <th> element is found in an HTML table within the <body> tag. The <th> tag defines the header cells in the table which are displayed as bold, center-aligned text. The <th> tag is a header cell that can appear in the first row of an HTML table.

The HTML <td> element defines a cell of a table that contains data. It participates in the table model.

The HTML <tr> element defines a row of cells in a table. The row's cells can then be established using a mix of <td> (data cell) and <th> (header cell) elements.

he HREF is an attribute of the anchor tag, which is also used to identify sections within a document