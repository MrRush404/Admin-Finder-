#!/usr/bin/perl
#####################################
#        Admin Finder Tools         #
#####################################
#	 	   Coded By Mr.Rush         #
#####################################
#             My Github             # 
#     https://github.com/MrRush404	#
#####################################
#	           Call Me	    		#
#  www.facebook.com/Infinitycyber25 #
#####################################
    use HTTP::Request;
    use LWP::UserAgent;


system ("cls");
print "\t\t##################################################\n";  
print "\t\t#           Admin Finder Tools Version 1.2       #\n";
print "\t\t##################################################\n";
print "\t\t#                 Coded By Mr.Rush               #\n";
print "\t\t##################################################\n";
print "\n\n";
sleep (1);
print "\n\n";
print "\t\t Contoh: http://target.com\n";
print "\t\t Target:";
    $host=<STDIN>;
    chomp($host);
    if($host !~ /http:\/\//) { $host = "http://$host"; };

print "\n\n";
print "\t\t##################################################\n";
print "\t\t#                     Scanning                   #\n";
print "\t\t##################################################\n";
print "\n\n";
@p = ("/phpMyAdmin/",
"/phpmyadmin/",
"/PMA/",
":2082/",
"/admin/",
"/dbadmin/",
"/mysql/",
"/myadmin/",
"/phpmyadmin2/",
"/phpMyAdmin2/",
"/phpMyAdmin-2/",
"/php-my-admin/",
"/phpMyAdmin-2.2.3/",
"/phpMyAdmin-2.2.6/",
"/phpMyAdmin-2.5.1/",
"/phpMyAdmin-2.5.4/",
"/phpMyAdmin-2.5.5-rc1/",
"/phpMyAdmin-2.5.5-rc2/",
"/phpMyAdmin-2.5.5/",
"/phpMyAdmin-2.5.5-pl1/",
"/phpMyAdmin-2.5.6-rc1/",
"/phpMyAdmin-2.5.6-rc2/",
"/phpMyAdmin-2.5.6/",
"/phpMyAdmin-2.5.7/",
"/phpMyAdmin-2.5.7-pl1/",
"/phpMyAdmin-2.6.0-alpha/",
"/phpMyAdmin-2.6.0-alpha2/",
"/phpMyAdmin-2.6.0-beta1/",
"/phpMyAdmin-2.6.0-beta2/",
"/phpMyAdmin-2.6.0-rc1/",
"/phpMyAdmin-2.6.0-rc2/",
"/phpMyAdmin-2.6.0-rc3/",
"/phpMyAdmin-2.6.0/",
"/phpMyAdmin-2.6.0-pl1/",
"/phpMyAdmin-2.6.0-pl2/",
"/phpMyAdmin-2.6.0-pl3/",
"/phpMyAdmin-2.6.1-rc1/",
"/phpMyAdmin-2.6.1-rc2/",
"/phpMyAdmin-2.6.1/",
"/phpMyAdmin-2.6.1-pl1/",
"/phpMyAdmin-2.6.1-pl2/",
"/phpMyAdmin-2.6.1-pl3/",
"/phpMyAdmin-2.6.2-rc1/",
"/phpMyAdmin-2.6.2-beta1/",
"/phpMyAdmin-2.6.2-rc1/",
"/phpMyAdmin-2.6.2/",
"/phpMyAdmin-2.6.2-pl1/",
"/phpMyAdmin-2.6.3/",
"/phpMyAdmin-2.6.3-rc1/",
"/phpMyAdmin-2.6.3/",
"/phpMyAdmin-2.6.3-pl1/",
"/phpMyAdmin-2.6.4-rc1/",
"/phpMyAdmin-2.6.4-pl1/",
"/phpMyAdmin-2.6.4-pl2/",
"/phpMyAdmin-2.6.4-pl3/",
"/phpMyAdmin-2.6.4-pl4/",
"/phpMyAdmin-2.6.4/",
"/phpMyAdmin-2.7.0-beta1/",
"/phpMyAdmin-2.7.0-rc1/",
"/phpMyAdmin-2.7.0-pl1/",
"/phpMyAdmin-2.7.0-pl2/",
"/phpMyAdmin-2.7.0/",
"/phpMyAdmin-2.8.0-beta1/",
"/phpMyAdmin-2.8.0-rc1/",
"/phpMyAdmin-2.8.0-rc2/",
"/phpMyAdmin-2.8.0/",
"/phpMyAdmin-2.8.0.1/",
"/phpMyAdmin-2.8.0.2/",
"/phpMyAdmin-2.8.0.3/",
"/phpMyAdmin-2.8.0.4/",
"/phpMyAdmin-2.8.1-rc1/",
"/phpMyAdmin-2.8.1/",
"/phpMyAdmin-2.8.2/",
"/sqlmanager/",
"/mysqlmanager/",
"/p/m/a/",
"/PMA2005/",
"/pma2005/",
"/phpmanager/",
"/php-myadmin/",
"/phpmy-admin/",
"/webadmin/",
"/sqlweb/",
"/websql/",
"/webdb/",
"/mysqladmin/",
"/mysql-admin/",
"/private.php/",
"/robots.txt/",
"/photoalbum/upload/",
"/_vti_pvt/",
":5800/",
"/phpMyAdmin/",
"/config.html/",
"/_private/",
"admin1.php",
"admin1.html",
"admin2.php",
"admin2.html",
"yonetim.php",
"yonetim.html",
"yonetici.php",
"yonetici.html",
"adm/",
"admin/",
"admin/account.php",
"admin/account.html",
"admin/index.php",
"admin/index.html",
"admin/login.php",
"admin/login.html",
"admin/home.php",
"admin/controlpanel.html",
"admin/controlpanel.php",
"admin.php",
"admin.html",
"admin/cp.php",
"admin/cp.html",
"cp.php",
"cp.html",
"administrator/",
"administrator/index.html",
"administrator/index.php",
"administrator/login.html",
"administrator/login.php",
"administrator/account.html",
"administrator/account.php",
"administrator.php",
"administrator.html",
"login.php",
"login.html",
"modelsearch/login.php",
"moderator.php",
"moderator.html",
"moderator/login.php",
"moderator/login.html",
"moderator/admin.php",
"moderator/admin.html",
"moderator/",
"account.php",
"account.html",
"controlpanel/",
"controlpanel.php",
"controlpanel.html",
"admincontrol.php",
"admincontrol.html",
"adminpanel.php",
"adminpanel.html",
"admin1.asp",
"admin2.asp",
"yonetim.asp",
"yonetici.asp",
"admin/account.asp",
"admin/index.asp",
"admin/login.asp",
"admin/home.asp",
"admin/controlpanel.asp",
"admin.asp",
"admin/cp.asp",
"cp.asp",
"administrator/index.asp",
"administrator/login.asp",
"administrator/account.asp",
"administrator.asp",
"login.asp",
"modelsearch/login.asp",
"moderator.asp",
"moderator/login.asp",
"moderator/admin.asp",
"account.asp",
"controlpanel.asp",
"admincontrol.asp",
"adminpanel.asp",
"fileadmin/",
"fileadmin.php",
"fileadmin.asp",
"fileadmin.html",
"administration/",
"administration.php",
"administration.html",
"sysadmin.php",
"sysadmin.html",
"phpmyadmin/",
"myadmin/",
"sysadmin.asp",
"sysadmin/",
"ur-admin.asp",
"ur-admin.php",
"ur-admin.html",
"ur-admin/",
"Server.php",
"Server.html",
"Server.asp",
"Server/",
"wp-admin/",
"administr8.php",
"administr8.html",
"administr8/",
"administr8.asp",
"webadmin/",
"webadmin.php",
"webadmin.asp",
"webadmin.html",
"administratie/",
"admins/",
"admins.php",
"admins.asp",
"administrivia/",
"Database_Administration/",
"WebAdmin/",
"useradmin/",
"sysadmins/",
"admin1/",
"system-administration/",
"administrators/",
"pgadmin/",
"directadmin/",
"staradmin/",
"ServerAdministrator/",
"SysAdmin/",
"administer/",
"LiveUser_Admin/",
"sys-admin/",
"typo3/",
"panel/",
"cpanel/",
"cPanel/",
"cpanel_file/",
"platz_login/",
"rcLogin/",
"blogindex/",
"formslogin/",
"autologin/",
"support_login/",
"meta_login/",
"manuallogin/",
"simpleLogin/",
"loginflat/",
"utility_login/",
"showlogin/",
"memlogin/",
"members/",
"login-redirect/",
"sub-login/",
"wp-login/",
"login1/",
"dir-login/",
"login_db/",
"xlogin/",
"smblogin/",
"customer_login/",
"UserLogin/",
"login-us/",
"acct_login/",
"admin_area/",
"bigadmin/",
"project-admins/",
"phppgadmin/",
"pureadmin/",
"sql-admin/",
"radmind/",
"openvpnadmin/",
"wizmysqladmin/",
"vadmind/",
"ezsqliteadmin/",
"hpwebjetadmin/",
"newsadmin/",
"adminpro/",
"Lotus_Domino_Admin/",
"bbadmin/",
"vmailadmin/",
"Indy_admin/",
"ccp14admin/",
"irc-macadmin/",
"banneradmin/",
"sshadmin/",
"phpldapadmin/",
"macadmin/",
"administratoraccounts/",
"admin4_account/",
"admin4_colon/",
"radmind-1/",
"Super-Admin/",
"AdminTools/",
"cmsadmin/",
"SysAdmin2/",
"globes_admin/",
"cadmins/",
"phpSQLiteAdmin/",
"navSiteAdmin/",
"server_admin_small/",
"logo_sysadmin/",
"server/",
"database_administration/",
"power_user/",
"system_administration/",
"ss_vms_admin_sm/",
"admin.%EXT%",
"login.htm",
"login.html",
"login/",
"login.%EXT%",
"adm/",
"admin/",
"admin/account.html",
"admin/login.html",
"admin/login.htm",
"admin/home.%EXT%",
"admin/controlpanel.html",
"admin/controlpanel.htm",
"admin/cp.%EXT%",
"admin/adminLogin.html",
"admin/adminLogin.htm",
"admin/admin_login.%EXT%",
"admin/controlpanel.%EXT%",
"admin/admin-login.%EXT%",
"admin-login.%EXT%",
"admin/account.%EXT%",
"admin/admin.%EXT%",
"admin.htm",
"admin.html",
"adminitem/",
"adminitem.%EXT%",
"adminitems/",
"adminitems.%EXT%",
"administrator/",
"administrator/login.%EXT%",
"administrator.%EXT%",
"administration/",
"administration.%EXT%",
"adminLogin/",
"adminlogin.%EXT%",
"admin_area/admin.%EXT%",
"admin_area/",
"admin_area/login.%EXT%",
"manager/",
"manager.%EXT%",
"letmein/",
"letmein.%EXT%",
"superuser/",
"superuser.%EXT%",
"access/",
"access.%EXT%",
"sysadm/",
"sysadm.%EXT%",
"superman/",
"supervisor/",
"panel.%EXT%",
"control/",
"control.%EXT%",
"member/",
"member.%EXT%",
"members/",
"members.%EXT%",
"user/",
"user.%EXT%",
"cp/",
"uvpanel/",
"manage/",
"manage.%EXT%",
"management/",
"management.%EXT%",
"signin/",
"signin.%EXT%",
"log-in/",
"log-in.%EXT%",
"log_in/",
"log_in.%EXT%",
"sign_in/",
"sign_in.%EXT%",
"sign-in/",
"sign-in.%EXT%",
"users/",
"users.%EXT%",
"accounts/",
"accounts.%EXT%",
"wp-login.php",
"bb-admin/login.%EXT%",
"bb-admin/admin.%EXT%",
"bb-admin/admin.html",
"administrator/account.%EXT%",
"relogin.htm",
"relogin.html",
"check.%EXT%",
"relogin.%EXT%",
"processlogin.%EXT%",
"checklogin.%EXT%",
"checkuser.%EXT%",
"checkadmin.%EXT%",
"isadmin.%EXT%",
"authenticate.%EXT%",
"authentication.%EXT%",
"auth.%EXT%",
"authuser.%EXT%",
"authadmin.%EXT%",
"cp.%EXT%",
"modelsearch/login.%EXT%",
"moderator.%EXT%",
"moderator/",
"controlpanel/",
"controlpanel.%EXT%",
"admincontrol.%EXT%",
"adminpanel.%EXT%",
"fileadmin/",
"fileadmin.%EXT%",
"sysadmin.%EXT%",
"admin1.%EXT%",
"admin1.html",
"admin1.htm",
"admin2.%EXT%",
"admin2.html",
"yonetim.%EXT%",
"yonetim.html",
"yonetici.%EXT%",
"yonetici.html",
"phpmyadmin/",
"myadmin/",
"ur-admin.%EXT%",
"ur-admin/",
"Server.%EXT%",
"Server/",
"wp-admin/",
"administr8.%EXT%",
"administr8/",
"webadmin/",
"webadmin.%EXT%",
"administratie/",
"admins/",
"admins.%EXT%",
"administrivia/",
"Database_Administration/",
"useradmin/",
"sysadmins/",
"admin1/",
"system-administration/",
"administrators/",
"pgadmin/",
"directadmin/",
"staradmin/",
"ServerAdministrator/",
"SysAdmin/",
"administer/",
"LiveUser_Admin/",
"sys-admin/",
"typo3/",
"panel/",
"cpanel/",
"cpanel_file/",
"platz_login/",
"rcLogin/",
"blogindex/",
"formslogin/",
"autologin/",
"support_login/",
"meta_login/",
"manuallogin/",
"simpleLogin/",
"loginflat/",
"utility_login/",
"showlogin/",
"memlogin/",
"login-redirect/",
"sub-login/",
"wp-login/",
"login1/",
"dir-login/",
"login_db/",
"xlogin/",
"smblogin/",
"customer_login/",
"UserLogin/",
"login-us/",
"acct_login/",
"bigadmin/",
"project-admins/",
"phppgadmin/",
"pureadmin/",
"sql-admin/",
"radmind/",
"openvpnadmin/",
"wizmysqladmin/",
"vadmind/",
"ezsqliteadmin/",
"hpwebjetadmin/",
"newsadmin/",
"adminpro/",
"Lotus_Domino_Admin/",
"bbadmin/",
"vmailadmin/",
"Indy_admin/",
"ccp14admin/",
"irc-macadmin/",
"sshadmin/",
"phpldapadmin/",
"macadmin/",
"administratoraccounts/",
"admin4_account/",
"admin4_colon/",
"radmind-1/",
"Super-Admin/",
"AdminTools/",
"cmsadmin/",
"SysAdmin2/",
"globes_admin/",
"cadmins/",
"phpSQLiteAdmin/",
"navSiteAdmin/",
"server_admin_small/",
"logo_sysadmin/",
"power_user/",
"system_administration/",
"ss_vms_admin_sm/",
"bb-admin/",
"panel-administracion/",
"memberadmin/",
"administratorlogin/",
"adm.%EXT%",
"panel-administracion/login.%EXT%",
"pages/admin/admin-login.%EXT%",
"pages/admin/",
"acceso.%EXT%",
"admincp/login.%EXT%",
"admincp/",
"admincontrol/",
"affiliate.%EXT%",
"adm_auth.%EXT%",
"memberadmin.%EXT%",
"administratorlogin.%EXT%",
"modules/admin/",
"administrators.%EXT%",
"siteadmin/",
"siteadmin.%EXT%",
"adminsite/",
"kpanel/",
"vorod/",
"vorod.%EXT%",
"vorud/",
"vorud.%EXT%",
"adminpanel/",
"PSUser/",
"secure/",
"webmaster/",
"webmaster.%EXT%",
"autologin.%EXT%",
"userlogin.%EXT%",
"admin_area.%EXT%",
"cmsadmin.%EXT%",
"security/",
"usr/",
"root/",
"secret/",
"admin/login.%EXT%",
"admin/adminLogin.%EXT%",
"moderator.php",
"moderator.html",
"moderator/login.%EXT%",
"moderator/admin.%EXT%",
"yonetici.%EXT%",
"0admin/",
"0manager/",
"aadmin/",
"cgi-bin/login%EXT%",
"login1%EXT%",
"login_admin/",
"login_admin%EXT%",
"login_out/",
"login_out%EXT%",
"login_user%EXT%",
"loginerror/",
"loginok/",
"loginsave/",
"loginsuper/",
"loginsuper%EXT%",
"login%EXT%",
"logout/",
"logout%EXT%",
"secrets/",
"super1/",
"super1%EXT%",
"super_index%EXT%",
"super_login%EXT%",
"supermanager%EXT%",
"superman%EXT%",
"superuser%EXT%",
"supervise/",
"supervise/Login%EXT%",
"super%EXT%",
"admin1.php",
"admin1.html",
"admin2.php",
"admin2.html",
"yonetim.php",
"yonetim.html",
"yonetici.php",
"yonetici.html",
"adm/",
"admin/",
"admin/account.php",
"admin/account.html",
"admin/index.php",
"admin/index.html",
"admin/login.php",
"admin/login.html",
"admin/home.php",
"admin/controlpanel.html",
"admin/controlpanel.php",
"admin.php",
"admin.html",
"admin/cp.php",
"admin/cp.html",
"cp.php",
"cp.html",
"administrator/",
"administrator/index.html",
"administrator/index.php",
"administrator/login.html",
"administrator/login.php",
"administrator/account.html",
"administrator/account.php",
"administrator.php",
"administrator.html",
"login.php",
"login.html",
"modelsearch/login.php",
"moderator.php",
"moderator.html",
"moderator/login.php",
"moderator/login.html",
"moderator/admin.php",
"moderator/admin.html",
"moderator/",
"account.php",
"account.html",
"controlpanel/",
"controlpanel.php",
"controlpanel.html",
"admincontrol.php",
"admincontrol.html",
"adminpanel.php",
"adminpanel.html",
"admin1.asp",
"admin2.asp",
"yonetim.asp",
"yonetici.asp",
"admin/index.asp",
"admin/login.asp",
"admin/home.asp",
"admin/controlpanel.asp",
"admin.asp",
"admin/cp.asp",
"cp.asp",
"administrator/index.asp",
"administrator/account.asp",
"administrator.asp",
"login.asp",
"modelsearch/login.asp",
"moderator.asp",
"moderator/login.asp",
"moderator/admin.asp",
"account.asp",
"controlpanel.asp",
"admincontrol.asp",
"adminpanel.asp",
"fileadmin.php",
"fileadmin.asp",
"fileadmin.html",
"administration/",
"administration.php",
"administration.html",
"sysadmin.php",
"sysadmin.html",
"phpmyadmin/",
"myadmin/",
"sysadmin.asp",
"sysadmin/",
"ur-admin.asp",
"ur-admin.php",
"ur-admin.html",
"ur-admin/",
"Server.php",
"Server.html",
"Server.asp",
"Server/",
"wp-admin/",
"administr8.php",
"administr8.html",
"administr8/",
"administr8.asp",
"webadmin/",
"webadmin.php",
"webadmin.asp",
"webadmin.html",
"administratie/",
"admins/",
"admins.php",
"admins.asp",
"admins.html",
"administrivia/",
"Database_Administration/",
"WebAdmin/",
"useradmin/",
"sysadmins/",
"admin1/",
"system-administration/",
"administrators/",
"pgadmin/",
"directadmin/",
"staradmin/",
"ServerAdministrator/",
"SysAdmin/",
"administer/",
"LiveUser_Admin/",
"sys-admin/",
"typo3/",
"panel/",
"cpanel/",
"cPanel/",
"cpanel_file/",
"platz_login/",
"rcLogin/",
"blogindex/",
"formslogin/",
"support_login/",
"meta_login/",
"manuallogin/",
"simpleLogin/",
"loginflat/",
"utility_login/",
"showlogin/",
"memlogin/",
"members/",
"login-redirect/",
"sub-login/",
"wp-login/",
"login1/",
"dir-login/",
"login_db/",
"xlogin/",
"smblogin/",
"customer_login/",
"UserLogin/",
"login-us/",
"acct_login/",
"admin_area/",
"bigadmin/",
"project-admins/",
"phppgadmin/",
"pureadmin/",
"sql-admin/",
"radmind/",
"openvpnadmin/",
"wizmysqladmin/",
"vadmind/",
"ezsqliteadmin/",
"hpwebjetadmin/",
"newsadmin/",
"adminpro/",
"Lotus_Domino_Admin/",
"bbadmin/",
"vmailadmin/",
"Indy_admin/",
"ccp14admin/",
"irc-macadmin/",
"banneradmin/",
"sshadmin/",
"phpldapadmin/",
"macadmin/",
"administratoraccounts/",
"admin4_account/",
"admin4_colon/",
"radmind-1/",
"Super-Admin/",
"AdminTools/",
"cmsadmin/",
"SysAdmin2/",
"globes_admin/",
"cadmins/",
"phpSQLiteAdmin/",
"navSiteAdmin/",
"server_admin_small/",
"logo_sysadmin/",
"server/",
"power_user/",
"system_administration/",
"ss_vms_admin_sm/");


foreach $myadmin(@p){

$url = $host.$myadmin;
$request = HTTP::Request->new(GET=>$url);
$useragent = LWP::UserAgent->new();

$response = $useragent->request($request);
if ($response->is_success){print "Found : $url\n";}
if ($response->content=~ /Access Denied/){print "Found : $url =>[Error & Access Denied]\n";}
else {print "NotFound : $myadmin\n";}



}
