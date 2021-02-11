
URL	           HTTPVerb  Action
/articles	    GET	    index 
/articles/new   GET	    new
/articles	    POST	create
/articles/:id	    GET	    show
/articles/:id/edit	GET	    edit
/articles/:id	PATCH/PUT	update
/articles/:id	DELETE	    destroy


The substitution tag evaluates Ruby code and then displays the results into the view. It opens with <%= and closes with %>. Inside of these tags, you can write any valid Ruby code that you want.

Scripting tags open with <% and close with %>. They evaluate –– but do not actually display –– Ruby code