<header>
	 

	<div id="site-location">{{$sitelocation}}</div>
	<div id="banner">{{$banner}}</div>
</header>
<nav>
	<ul>



		{{if $userinfo}}
		
<li id="nav-user-linkmenu" class="nav-menu-icon"><a href="#" rel="#nav-user-menu" title="{{$sitelocation}}"><img src="{{$userinfo.icon}}" alt="{{$userinfo.name}}">
			<span id="intro-update" class="nav-notify"></span></a>
				<ul id="nav-user-menu" class="menu-popup">
				          {{if $nav.notifications}}<li><a class="{{$nav.notifications.2}}" href="{{$nav.notifications.0}}" title="{{$nav.notifications.3}}" >{{$nav.introductions.1}}</a><span id="intro-update-li" class="nav-notify"></span></li>{{/if}}
          {{if $nav.contacts}}<li><a class="{{$nav.contacts.2}}" href="{{$nav.contacts.0}}" title="{{$nav.contacts.3}}" >{{$nav.contacts.1}}</a></li>{{/if}}  
          {{if $nav.messages}}<li><a class="{{$nav.messages.2}}" href="{{$nav.messages.0}}" title="{{$nav.messages.3}}" >{{$nav.messages.1}}</a></li>{{/if}}
					{{foreach $nav.usermenu as $usermenu}}
						<li><a class="{{$usermenu.2}}" href="{{$usermenu.0}}" title="{{$usermenu.3}}">{{$usermenu.1}}</a></li>
					{{/foreach}}	
				</ul>
			</li>
		{{/if}}
		
		{{if $nav.network}}
			<li id="nav-network-link" class="nav-menu {{$sel.network}}">
				<a class="{{$nav.network.2}}" href="{{$nav.network.0}}" title="{{$nav.network.3}}" ><i class="icon-th"></i></a>
				<span id="net-update" class="nav-notify"></span>
			</li>
		{{/if}}
		{{if $nav.home}}
			<li id="nav-home-link" class="nav-menu {{$sel.home}}">
				<a class="{{$nav.home.2}}" href="{{$nav.home.0}}" title="{{$nav.home.3}}" ><i class="icon-home"></i></a>
				<span id="home-update" class="nav-notify"></span>
			</li>
		{{/if}}
		
		
				{{if $nav.community}}
			<li id="nav-community-link" class="nav-menu {{$sel.community}}">
				<a class="{{$nav.community.2}}" href="{{$nav.community.0}}" title="{{$nav.community.3}}" ><i class="icon-bullseye"></i></a>
			</li>
		{{/if}}
		
		{{if $nav.messages}}
			<li id="nav-messages-linkmenu" class="nav-menu">
				<a href="{{$nav.messages.0}}" rel="#nav-messages-menu" title="{{$nav.messages.1}}"><i class="icon-envelope-alt"></i>
                        	<span id="mail-update" class="nav-notify"></span></a>
                        	<ul id="nav-messages-menu" class="menu-popup">
                                	<li id="nav-messages-see-all"><a href="{{$nav.messages.0}}">{{$nav.messages.1}}</a></li>
                                        <li id="nav-messages-see-all"><a href="{{$nav.messages.new.0}}">{{$nav.messages.new.1}}</a></li>
                        	</ul>
                        </li>           
                {{/if}}

		{{if $nav.apps}}
			<li id="nav-apps-link" class="nav-menu {{$sel.apps}}">
				<a class=" {{$nav.apps.2}}" href="#" rel="#nav-apps-menu" title="{{$nav.apps.3}}" ><i class="icon-reorder"></i></a>
				<ul id="nav-apps-menu" class="menu-popup">
					{{foreach $apps as $ap}}
					<li>{{$ap}}</li>
					{{/foreach}}
				</ul>
			</li>
		{{/if}}

		
		{{if $nav.notifications}}
			<li  id="nav-notifications-linkmenu" class="nav-menu-icon"><a href="{{$nav.notifications.0}}" rel="#nav-notifications-menu" title="{{$nav.notifications.1}}"><span class="icon-bell-alt"></span></a>
				<span id="notify-update" class="nav-notify"></span>
				<ul id="nav-notifications-menu" class="menu-popup">
					<li id="nav-notifications-mark-all"><a href="#" onclick="notifyMarkAll(); return false;">{{$nav.notifications.mark.1}}</a></li>
					<li id="nav-notifications-see-all"><a href="{{$nav.notifications.all.0}}">{{$nav.notifications.all.1}}</a></li>
					<li class="empty">{{$emptynotifications}}</li>
				</ul>
			</li>		
		{{/if}}		
		



		

		<li id="nav-site-linkmenu" class="nav-menu-icon"><a href="#" rel="#nav-site-menu"><span class="icon-cog"></span></a>
			<ul id="nav-site-menu" class="menu-popup">
				{{if $nav.manage}}<li><a class="{{$nav.manage.2}}" href="{{$nav.manage.0}}" title="{{$nav.manage.3}}">{{$nav.manage.1}}</a></li>{{/if}}				
				{{if $nav.help}} <li><a class="{{$nav.help.2}}" target="friendica-help" href="{{$nav.help.0}}" title="{{$nav.help.3}}" >{{$nav.help.1}}</a></li>{{/if}}
				<li><a class="{{$nav.search.2}}" href="friendica" title="Site Info / Impressum" >Info/Impressum</a></li>
				<li><a class="{{$nav.directory.2}}" href="{{$nav.directory.0}}" title="{{$nav.directory.3}}" >{{$nav.directory.1}}</a></li>
				{{if $nav.delegations}}<li><a class="{{$nav.delegations.2}}" href="{{$nav.delegations.0}}" title="{{$nav.delegations.3}}">{{$nav.delegations.1}}</a></li>{{/if}}
				{{if $nav.settings}}<li><a class="{{$nav.settings.2}}" href="{{$nav.settings.0}}" title="{{$nav.settings.3}}">{{$nav.settings.1}}</a></li>{{/if}}
				{{if $nav.admin}}<li><a class="{{$nav.admin.2}}" href="{{$nav.admin.0}}" title="{{$nav.admin.3}}" >{{$nav.admin.1}}</a></li>{{/if}}

				{{if $nav.logout}}<li><a class="menu-sep {{$nav.logout.2}}" href="{{$nav.logout.0}}" title="{{$nav.logout.3}}" >{{$nav.logout.1}}</a></li>{{/if}}
				{{if $nav.login}}<li><a class="{{$nav.login.2}}" href="{{$nav.login.0}}" title="{{$nav.login.3}}" >{{$nav.login.1}}</a><li>{{/if}}
			</ul>		
		</li>

		


		{{if $nav.search}}
                <li id="search-box">
                        <form method="get" action="{{$nav.search.0}}">
                        	<input id="search-text" class="nav-menu-search" type="text" value="" name="search">
                        </form>
                </li>
		{{/if}}

<!--		
		{{if $nav.help}} 
		<li id="nav-help-link" class="nav-menu {{$sel.help}}">
			<a class="{{$nav.help.2}}" target="friendica-help" href="{{$nav.help.0}}" title="{{$nav.help.3}}" >{{$nav.help.1}}</a>
		</li>
		{{/if}}
-->

	</ul>
	{{$langselector}}
</nav>
<ul id="nav-notifications-template" style="display:none;" rel="template">
	<li><a href="{0}"><img data-src="{1}">{2} <span class="notif-when">{3}</span></a></li>

</ul>

