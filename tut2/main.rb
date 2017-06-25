require 'sinatra' 
require 'sinatra/reloader'
require 'slim'

get '/zz' do
	"zzarola"
end

get '/' do 
  slim :index 
end

__END__

@@layout 
doctype html 
html
	head
		title
			| Casacosa
		link href="//netdna.bootstrapcdn.com/bootswatch/3.1.0/united/bootstrap.min.css" rel="stylesheet" type="text/css"
			link href="/stylesheets/style.css" rel="stylesheet" type="text/css"
	body
		== slim :header
		.wrapper
			.container
				== yield
			.push
		.footer-wrapper
			== slim :footer
		script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"
		script src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js" type="text/javascript"

@@index 
h2 My Tasks sss
ul.tasks
  li Get Milk
  
@@footer
footer
  .container
    ul
      li About Us
      li Contact
      
@@header
.navbar.navbar-default.navbar-fixed-top
	.container
		.navbar-header
			a.navbar-brand href="/" Casacosa
			button.navbar-toggle data-target="#navbar-main" data-toggle="collapse" type="button"
				span.icon-bar
				span.icon-bar
				span.icon-bar
		#navbar-main.navbar-collapse.collapse
			ul.nav.navbar-nav
				li
					a href="#about" Home
				li
				a href="http://www.twitter.com/ubc_founder" target="_blank" About
				li.dropdown
					a#themes.dropdown-toggle data-toggle="dropdown" href="#"
						| Dropdown
						span.caret
					ul.dropdown-menu aria-labelledby="themes"
						li
							a href=""
						li.divider
						li
							a href=""
			ul.nav.navbar-nav.navbar-right
				li
					a Right Menu
					
				li
					a href="http://www.onehourbootstrap.com " target="_blank"

