
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="main" />
        <title>Submit Training</title>
	<script type="text/javascript" src="js/md_stylechanger.js"></script> 
	<!-- flooble Expandable Content header start -->
	<script language="javascript">
	// Expandable content script from flooble.com.
	// For more information please visit:
	//   http://www.flooble.com/scripts/expand.php
	// Copyright 2002 Animus Pactum Consulting Inc.
	// Script was customized for this application by author of this HTML document!
	//----------------------------------------------
	var ie4 = false; if(document.all) { ie4 = true; }
	function getObject(id) { if (ie4) { return document.all[id]; } else { return document.getElementById(id); } }
	function toggle(link, divId) { var lText = link.innerHTML; var d = getObject(divId);
 	if (lText == 'click to expand') { link.innerHTML = 'click to minimize'; d.style.display = 'block'; }
 	else { link.innerHTML = 'click to expand'; d.style.display = 'none'; } }
	</script>
	<!-- flooble Expandable Content header end   -->                        
    </head>
    <body>

<!-- ***** Start: Kopfbereich ********************************************// -->
<p class="unsichtbar">
  <a href="#inhalt" title="Directly to Contents">Directly to Contents</a>
</p>

<div id="navigation_oben">
  <a name="seitenanfang"></a>
  <table width="100%" border="0" cellpadding="0" cellspacing="1">
    <tr>
      <td nowrap="nowrap">
        <a href="http://www.uni-greifswald.de" target="_blank" class="mainleveltop_" >University of Greifswald</a><span class="mainleveltop_">&nbsp;|&nbsp; </span><a href="http://www.mnf.uni-greifswald.de/" target="_blank" class="mainleveltop_" >Faculty</a><span class="mainleveltop_">&nbsp;|&nbsp; </span><a href="http://www.math-inf.uni-greifswald.de/" target="_blank" class="mainleveltop_" >Institute</a><span class="mainleveltop_">&nbsp;|&nbsp;</span><a href="http://bioinf.uni-greifswald.de/" target="_blank" class="mainleveltop_">Bioinformatics Group</a>
      </td>
    </tr>
  </table>
</div>

<div id="banner">
   <div id="banner_links">
       <a href="http://www.math-inf.uni-greifswald.de/mathe/index.php" title="Institut f&uuml;r Mathematik und Inform\
atik"><img src="../images/header.gif" alt="Directly to home" /> </a>
   </div>
   <div id="banner_mitte">
      <div id="bannertitel1">
        Bioinformatics Web Server at University of Greifswald
      </div>
      <div id="bannertitel2">
        Gene Prediction with AUGUSTUS
      </div>
   </div>
   <div id="banner_rechts">
     <a href="http://www.math-inf.uni-greifswald.de/mathe/index.php/geschichte-und-kultur/167" title="Voderberg-Doppelspirale">
     <img src="../images/spirale.gif" align="left" />
     </a>
   </div>
</div>

<div id="wegweiser">
  Navigation for: &nbsp; &nbsp;<span class="breadcrumbs pathway">
    Submit Training</span>

  <div class="beendeFluss"></div>
</div>
<!-- ***** Ende: Kopfbereich *********************************************// -->

<!-- ***** Start: Koerper ************************************************// -->
<div id="koerper">

  <div id="linke_spalte">
     <ul class="menu">
         <li><a href="../index.gsp"><span>Introduction</span></a></li>
         <li id="current"><g:link controller="training" action="create"><span>Submit Training</span></g:link></li>
         <li><g:link controller="prediction" action="create"><span>Submit Prediction</span></g:link></li>
         <li><a href="../help.gsp"><span>Help</span></a></li>
         <li><a href="../references.gsp"><span>Links & References</span></a></li>
         <li><a href="http://bioinf.uni-greifswald.de"><span>Bioinformatics Group</span></a></li>
         <li><a href="http://bioinf.uni-greifswald.de/bioinf/impressum.html"><span>Impressum</span></a></li>
     </ul>
  </div>

  <div id="mittel_spalte">
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${trainingInstance}">
            <div class="errors">
                <g:renderErrors bean="${trainingInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:if test="${flash.error}">
                 <div class="errors">
                    &nbsp; <img src="../images/skin/exclamation.png"> &nbsp; ${flash.error}
                 </div>
            </g:if>
            <div class="main" id="main">
			<noscript><p><b><span style="color:red">Please enable javascript in your browser in order to display the submission form correctly!</span></b> Form functionality is not affected while javascript is disabled.</p>
			</noscript>
            <g:uploadForm action="commit" method="post" >
            <fieldset><legend>
		<table class="contentpaneopen">
		  <tr>
		    <td class="contentheading" width="100%">
		      
			<g:link controller="training" action="create">Data Input for Training AUGUSTUS</g:link>
		    </td>
		  </tr>
		</table>
	      </legend><p>
               <div class="dialog">
		    <p>Please use this form to submit data for training AUGUSTUS parameters for novel species/new genomic data.</p>
 		    <p>You have to specify an <b>E-mail address</b>, a <b>species name</b>, and a <b>genome file</b>!</p>
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="email_adress">E-mail</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:trainingInstance,field:'email_adress','errors')}">
                                    <input type="text" id="email_adress" name="email_adress" value="${fieldValue(bean:trainingInstance,field:'email_adress')}"/> &nbsp; <a href="../help.gsp#email"><small>Help</small></a>
                                </td> 
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="project_name">Species name</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:trainingInstance,field:'project_name','errors')}">
                                    <input type="text" maxlength="30" id="project_name" name="project_name" value="${fieldValue(bean:trainingInstance,field:'project_name')}"/> &nbsp; <a href="../help.gsp#species_name"><small>Help</small></a>
                                </td>
                            </tr>
                          </tbody> 
                      </table>
                      
                      <p>There are two options for sequence file (fasta format) transfer:<br>You may <b>either</b> upload data files from your computer <b>or</b> specify web links. &nbsp; <a href="../help.gsp#upload_link"><small>Help</small></a></p>
                      <br>
                      <table>
                         <tbody>
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="GenomeFile"><b>Genome file</b>&nbsp; <a href="../help.gsp#genome_file"><small>Help</small></a></label>
                                </td>
				<td valign="top">
				</td>
		    	    </tr>
			    <tr class="prop">
			        <td valitn="top">Upload a file:</td>
                                <td valitn="top">
                                    <input type="file" id="GenomeFile" name="GenomeFile"/>
                                </td>
			    </tr>
			    <tr class="prop">
                                <td>&nbsp;<b>or</b>&nbsp;</td><td></td>
		            </tr>
			    <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="genome_ftp_link">specify web link to genome file:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:trainingInstance,field:'genome_ftp_link','errors')}">
                                    <input type="text" id="genome_ftp_link" name="genome_ftp_link" value="${fieldValue(bean:trainingInstance,field:'genome_ftp_link')}"/> 
                                </td>
                            </tr> 
                          </tbody>
                        </table>
                        <br>
                        You need to specify <b>at least one</b> of the following files: <a href="../help.gsp#which_fiiles"><small>Help</small></a><br><br>
                        <table>
                          <tbody>
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="EstFile"><b>cDNA file</b> &nbsp; <small><b><i>Non-commercial users only</i></b></small> &nbsp; <a href="../help.gsp#cDNA"><small>Help</small></a></label>
                                </td>
                                <td valign="top">
                                </td>
			    </tr> 
			    <tr class="prop">
			      <td valign="top">Upload a file:</td>
			      <td valign="top">
				            <input type="file" id="EstFile" name="EstFile"/>
                              </td>
			    </tr>
			    <tr class="prop">
                              <td>&nbsp;<b>or</b>&nbsp;</td><td></td>
			    </tr>
			    <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="est_ftp_link">specify web link to cDNA file:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:trainingInstance,field:'est_ftp_link','errors')}">
                                    <input type="text" id="est_ftp_link" name="est_ftp_link" value="${fieldValue(bean:trainingInstance,field:'est_ftp_link')}"/>
                                </td>
                            </tr> 
			    <tr class="prop"><td><br></td><td></td></tr>
                            <tr class="prop">
                                <td valign="top" class="name">
				  <label for="ProteinFile"><b>Protein file</b> &nbsp; <a href="../help.gsp#protein"><small>Help</small></a></label>
                                </td>
                                <td valign="top">
                                                      </td>
		     	    </tr>
			    <tr class="prop">
			      <td valign="top">Upload a file:</td>
                                <td valign="top">
                                    <input type="file" id="ProteinFile" name="ProteinFile"/>
                                </td>
		            </tr> 
			    <tr class="prop">
                            <td>&nbsp;<b>or</b>&nbsp;</td><td></td>
			    </tr>
			    <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="protein_ftp_link">specify web link to protein file:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:trainingInstance,field:'protein_ftp_link','errors')}">
                                    <input type="text" id="protein_ftp_link" name="protein_ftp_link" value="${fieldValue(bean:trainingInstance,field:'protein_ftp_link')}"/>
                                </td>
                            </tr> 
			    <tr class="prop"><td><br></td><td></td></tr>
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="struct_file"><b>Training gene structure file</b> &nbsp; <a href="../help.gsp#structure"><small>Help</small></a></label>
                                </td>
				<td valign="top"></td>
			    </tr>
			    <tr class="prop">
			        <td valign="top">Upload a file:</td>
                                <td valign="top">
                                    <input type="file" id="StructFile" name="StructFile"/> 
                                </td>
                            </tr> 
                        </tbody>
                    </table>
                    <br>
			<!-- show some content upon click -->
			<h2>Possible file combinations [<a title="show/hide" id="exp_file_options_link" href="javascript: void(0);" onclick="toggle(this, 'exp_file_options');"  style="text-decoration: none; color: #006699; ">click to minimize</a>]</h2>
			<div id="exp_file_options" style="padding: 3px;">		    <p>
		      		<ul>
					<li><b>{genome file, cDNA file}</b><br>In this case, the cDNA file is used to create a training gene set. If cDNA quality is sufficient, also a UTR training set will be created.</li>
					<li><b>{genome file, protein file}</b><br>In this case, the protein file is used to create a training gene set. No UTR training set can be created.</li>
					<li><b>{genome file, gene structure file}</b><br>In this case, the gene structure file is used as a training gene set. If the gene structure file contains UTR elements, also a UTR training set will be created.</li>
					<li><b>{genome file, cDNA file, protein file}</b><br>In this case, the protein file will be used to create a training gene set. No UTR training set will be created. cDNA sequences will be used as evidence for prediction, only.</li>
					<li><b>{genome file, cDNA file, gene structure file}</b><br>In this case, the gene structure file is used as a training gene set. If the gene structure file contains UTR elements, also a UTR training set will be created. cDNA sequences will be used as evidence for prediction, only.</li>
				</ul>
		      		</p>
		    		<h2>File combinations that are currently not supported</h2>
		    		<p>
		      			<ul>
					<li><b>{genome file, cDNA file, protein file, gene structure file}</b></li>
					<li><b>{genome file, protein file, gene structure file}</b></li>
					</ul>
		      		</p>
			</div>
			<script language="javascript">toggle(getObject('exp_file_options_link'), 'exp_file_options');</script>
			<!-- end of javascript content on click -->
                    <br>
		    <p>We use a <b>verification string</b> to figure out whether you are a <b>human</b> submitter. Please type the text in the image below into the text field next to the image.
			<table>
				<tbody>
					<tr class="prop">
						<td valign="top" class="name">
							<img src="${createLink(controller: 'simpleCaptcha', action: 'captcha')}"/> &nbsp; &nbsp; <g:textField name="captcha"/>
						</td>
					</tr>
				</tbody>
			</table>
                </div>
                <div class="buttons">
                    <span class="button"><input class="commit" type="submit" value="Start Training" /></span>
                </div>
            </g:uploadForm>
            </div>
            <p>&nbsp;</p>           
        </div>
     <div id="rechte_spalte">
    <div class="linien_div">
      <h5 class="ueberschrift_spezial">CONTACT</h5>
      <strong>Institute for Mathematics und Computer Sciences</strong><br/>
      <strong>Bioinformatics Group</strong><br />
      Walther-Rathenau-Stra&szlig;e 47<br />
      17487 Greifswald<br />
      Germany<br />
      Tel.: +49 (0)3834 86 - 46 24<br/>
      Fax:  +49 (0)3834 86 - 46 40<br /><br />
      <a href="mailto:augustus-web@uni-greifswald.de" title="E-Mail augustus-web@uni-greifswald.de, opens the standard mail program">augustus-web@uni-greifswald.de</a>
    </div>
    </div>

    <div class="beendeFluss"></div>
</div>
<!-- ***** Ende: Koerper *************************************************// -->

<!-- ***** Start: Fuss ***************************************************// -->
<div id="fuss">
  <div id="fuss_links"><p class="copyright">&copy; 2011 University of Greifswald</p></div>
  <div id="fuss_mitte">
  <div class="bannergroup">
 </div>
 </div>
 <div id="fuss_rechts" >
  <ul>
   <li>
    <a href="#seitenanfang">
     <img hspace="5" height="4" border="0" width="7" alt="Seitenanfang" src="../images/top.gif" />
     Top of page
    </a>
   </li>
  </ul>
 </div>
 <div class="beendeFluss"></div>
</div>
<!-- ***** Ende: Fuss ***************************************************// -->


    </body>
</html>
