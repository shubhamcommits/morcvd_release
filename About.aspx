<%@ Page Title="MorCVD" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="database.About" %>




<asp:Content ID="ContentPlaceHolder" ContentPlaceHolderID="ContentPlaceHolder_navigation" runat="server">
    <script>
        function addactiveclass() {
            $('ul#ullist li').click(function () {
                $('li.active').removeClass('active');
                $(this).addClass('active');
            });
        }
    </script>

   
        <li class="active" style="font-weight:bold;">

            <!--<asp:LinkButton ID="LinkButton_Home" runat="server" OnClick="LinkButton_Home_Click">Home</asp:LinkButton></li>-->
        <li class="active" style="font-weight:bold;">
            
            <asp:LinkButton ID="LinkButton_Disease" runat="server" OnClick="LinkButton_Disease_Click">Disease</asp:LinkButton></li>
        <li class="active" style="font-weight:bold;">
            <asp:LinkButton ID="LinkButton_Pathogen" runat="server" OnClick="LinkButton_Pathogen_Click">Pathogen Specific Interactions</asp:LinkButton></li>
        <li class="active" style="font-weight:bold;">
            <asp:LinkButton ID="LinkButton_Protein" runat="server" OnClick="LinkButton_Protein_Click">Protein Specific Interactions</asp:LinkButton></li>
        <li class="active" style="font-weight:bold;">
            <asp:LinkButton ID="LinkButton_Gene" runat="server" OnClick="LinkButton_Gene_Click">Gene Ontologies</asp:LinkButton></li>
        <li class="active" style="font-weight:bold;">
            <asp:LinkButton ID="LinkButton_Interaction_Methods" runat="server" OnClick="LinkButton_Interaction_Methods_Click">Interactions Detection Methods</asp:LinkButton></li>
  
    <!--<li class="active" style="font-weight:bold;">
            <asp:LinkButton ID="LinkButton_Interactors" runat="server" OnClick="LinkButton_Interactors_Click">Interactors & Drug Targets</asp:LinkButton></li>-->
       
    
        <style>



.dropbtn {
    background-color: black;
    color: white;
    padding: 16px;
    font-size: 16px;
    border: none;
}

/* The container <div> - needed to position the dropdown content */
.dropdown {
    position: relative;
    display: inline-block;
}

/* Dropdown Content (Hidden by Default) */
.dropdown-content {
    display: none;
    position: absolute;
    background-color: black;
    min-width: 160px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    z-index: 1;
}

/* Links inside the dropdown */
.dropdown-content a {
    color: black;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
}

/* Change color of dropdown links on hover */
.dropdown-content a:hover {background-color: aqua;}

/* Show the dropdown menu on hover */
.dropdown:hover .dropdown-content {display: block;}

/* Change the background color of the dropdown button when the dropdown content is shown */
/*.dropdown:hover .dropbtn {background-color: #3e8e41;}*/


        </style>

        <div class="dropdown">
                   <button class="dropbtn" style="font-weight:bold;">Interactors & Drug Targets</button>
  <div class="dropdown-content">
       
           <ul class="nav navbar-nav dropdown-content">

               
               
    <li class="active" style="font-weight:bold;">
        <asp:LinkButton ID="LinkButton_test" runat="server" OnClick="LinkButton_test_Click">Interactors</asp:LinkButton> </li>

     <li class="active" style="font-weight:bold;">
      <asp:LinkButton ID="LinkButton_common_int" runat="server" align="left" OnClick="LinkButton_common_int_Click">Common Interactors</asp:LinkButton> </li>
 
      </ul>
      
    
  </div>    
        </div>


        <div class="dropdown">

   
  <button class="dropbtn" style="font-weight:bold;">Contact Us</button>
  <div class="dropdown-content">
       
           <ul class="nav navbar-nav dropdown-content">
                <li class="active" style="font-weight:bold;">
            <asp:LinkButton ID="LinkButton_Documentation" runat="server" OnClick="LinkButton_Documentation_Click">Documentation</asp:LinkButton></li>
       <li class="active dropdown-toggle" style="font-weight:bold;">
    <asp:LinkButton ID="LinkButton_Contact" runat="server" PostBackUrl="~/Contact.aspx">Drop a line</asp:LinkButton></li>
    <li class="active" style="font-weight:bold;">
        <asp:LinkButton ID="LinkButton_team" runat="server" OnClick="LinkButton_team_Click">Meet our Team</asp:LinkButton>
    </li>
      </ul>
      
    
  </div>
</div>
    </li>
</asp:Content>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <!--  
    <div class="jumbotron" style="background-image :url(/images/1.jpg); height:100%;"> 
       

 
  </div>-->
   

     <asp:MultiView ID="MultiView1" runat="server">

         <asp:View ID="home" runat="server">
                <div class="row">
                    <p>
                    <br />
                    </p>
                    <p>
                    <br />
                    </p>
                    
                    </div>
    <center><h1 style="color:black;font-weight:bold; font-family: 'Roboto Slab', serif; font-size:72px;">WELCOME TO MorCVD</h1></center>
                <div class="row">
                <p>
<br />
                </p>    
                </div> 
                <div class="row">
                    <div class="col-md-10 col-md-offset-1">
                    <div class="col-md-6">
                        <p class="lead" style="color: black; font-size:20px;" align="justify">
MorCVD is a database containing data of host-pathogen protein-protein interactions (HPPPIs)
involved in cardiovascular diseases(CVDs). This database covers 3 major conditions: “Myocarditis”,
“Endocarditis” and “Pericarditis”, along with 16 other microbial CVDs.
                            <br />
                            <br />
The data has been listed in various ways such as pathogen specific interactions, protein specific
interactions and so forth to make it easier to obtain the relevant information. This database services
the needs of those studying host pathogen interactions in CVDs for applications such as drug
discovery, quantify functioning and to study the relative importance of certain proteins over others.
                            <br />
                            <br />
This database contains a total of 23,377 HPPPIs along with their PubMed references. The entities in
the database include pathogen names, taxonomy ids, pathogen proteins, host proteins, gene ontology
ids, gene ids, second interactors, drug targets, interaction types and interaction detection methods for
HPPPIs.
                        </p>
                    </div>
                    <div class="col-md-6 col-sm-12"><!--style="background-image: url(images/pic.png)"-->
                        <img class="img-thumbnail img-responsive" src="/pic.png" />
                    </div>
                </div>
                    </div>
                    <div class="row">
                    <p>
                    <br />
                    </p>
                    <p>
                    <br />
                    </p>
                    </div>

        <!--<p><a href="http://www.asp.net" class="btn btn-primary btn-lg">Learn more &raquo;</a></p>-->

            </asp:View>



            

         <asp:View ID="disease" runat="server">
               
                 
                 <div class="row text-center text-capitalize">
                     <p>
                         <br />
                     </p>
                       <p>
                         <br />
                     </p>
                <h1 style="font-weight:bold; font-size:xx-large; font-family: 'Roboto Slab', serif;">DISEASE</h1>    
                </div>
                 <div class="row">
                     <p>
                         <br />

                     </p>
                 </div>
                 <div class="row">
                     <div class="col-md-4">
                     </div>
                     <div class="col-md-2">
                         <table>
                             <tr>
                                 <th style="font-size:x-large;">Select the disease</th>
                              
                             </tr>
                             </table>

                     </div>

                     <div class="col-md-3">
                         <table>   
                          <td>
                              <asp:DropDownList ID="disease_drop" runat="server" CssClass="dropdown-toggle btn-lg">
                             <asp:ListItem Value="-">Select</asp:ListItem>                       
                             <asp:ListItem Value="DC">Dilated Cardiomyopathy</asp:ListItem>
                             <asp:ListItem Value="PC">Pericarditis</asp:ListItem>
                             <asp:ListItem Value="VM">Viral Myocarditis</asp:ListItem>
                             <asp:ListItem Value="CI">Cardiovascular Infections</asp:ListItem>
                             <asp:ListItem Value="AMYC">Acute Myocarditis</asp:ListItem>
                             <asp:ListItem Value="MYC">Myocarditis</asp:ListItem>
                             <asp:ListItem Value="HSS">Hypereosinophilic Syndrome</asp:ListItem>
                             <asp:ListItem Value="EC">Endocarditis</asp:ListItem>
                             <asp:ListItem Value="BEC">Bacterial Endocarditis</asp:ListItem>
                             <asp:ListItem Value="IEC">Infective Endocarditis</asp:ListItem>
                             <asp:ListItem Value="PCM">Peripartum Cardiomyopathy</asp:ListItem>
                             <asp:ListItem Value="QFEC">Q-fever Endocarditis</asp:ListItem>
                             <asp:ListItem Value="VC">Viral Cardiomyopathy</asp:ListItem>
                             <asp:ListItem Value="NVEC">Native Valve Endocarditis</asp:ListItem>
                             <asp:ListItem Value="ECMV">Endocarditis of Mitral Valve</asp:ListItem>
                             <asp:ListItem Value="CACVPES">Camptodactyly-Arthropathy-Coxa Vara-Pericarditis Syndrome</asp:ListItem>
                             <asp:ListItem Value="SAEC">Staphylococcus aureus Endocarditis</asp:ListItem>
                             <asp:ListItem Value="CMYC">Chronic Myocarditis</asp:ListItem>
                             <asp:ListItem Value="SBEC">Subacute Bacterial Endocarditis</asp:ListItem>
                             
                         </asp:DropDownList>

                          </td>
                             </table>
                     </div>
                 </div>
                  <div class="row text-center">
                      
                   <p>
                       <br />
                   </p>
                         
                    <asp:Button ID="disease_button" runat="server" Text="Submit" CssClass="btn-success btn-lg" OnClick="disease_button_Click"/>
             <p>
                 <br />
                   </p>
                   
                          
                </div>

                    <div class="row">
                        <div class="col-md-offset-1 col-md-10" style="font-size:x-large;">
                        <asp:GridView ID="disease_gridview" runat="server" Width="100%" CellPadding="4" ShowHeaderWhenEmpty="true" ForeColor="Transparent" AllowPaging="true" PageSize="100" OnPageIndexChanging="disease_gridview_PageIndexChanging" BorderColor="Black" BorderWidth="2px" PageScroll="Both" HeaderStyle-Width="100px">
                        <AlternatingRowStyle BackColor="Transparent" ForeColor="Black" Font-Size="Medium" />
                        <EditRowStyle BackColor="Transparent" Font-Size="Medium" />
                        <FooterStyle BackColor="Transparent" Font-Bold="True" ForeColor="White" Font-Size="Small" />
                        <HeaderStyle BackColor="Transparent" Font-Bold="True" ForeColor="White" Font-Size="Medium" Width="10%" />
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="Transparent" ForeColor="Black" Font-Size="Medium" />
                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#E9E7E2" />
                        <SortedAscendingHeaderStyle BackColor="#506C8C" />
                        <SortedDescendingCellStyle BackColor="#FFFDF8" />
                        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                        </asp:GridView>
                            </div>
                        
                </div>

                     <div class="row">
                    <div class="col-md-12">
                        <p>
                            <br />
                        </p>
                        <p>
                            <br />
                        </p>
                    </div>
                </div>
                    

            </asp:View>




         <asp:View ID="pathogen_specific_interactions" runat="server">

      <div class="row text-center text-capitalize">
                     <p>
                         <br />
                     </p>
           <p>
                         <br />
                     </p>
                <h1 style="font-weight:bold; font-size:xx-large; font-family: 'Roboto Slab', serif;">PATHOGEN SPECIFIC INTERACTIONS</h1>    
                </div>
                <div class="row">
                <p>
                    <br />

                </p>    
                </div>
                <div class="clearfix">
                    
                </div>
                <div class="row">
                    <div class="col-md-4"></div>
                    <div class="col-md-2">
                        <table>
                            <tr>
                        <th style="font-size:23px;">Select the Pathogen</th>    
                                </tr>
                        </table>
                        <h3></h3>
                        </div>
                    <div class="col-md-4">
                        <table>
                            <tr>
                            <td>
                        <asp:DropDownList ID="pathogen_specific_drop" runat="server" CssClass="btn-lg dropdown-toggle"> 
                            <asp:ListItem>Select</asp:ListItem>
                        </asp:DropDownList>
                                </td>
                                </tr>
                       </table>
                    </div>
                    </div>
                <div class="row text-center">
                    <p>
                        <br />
                        </p>
                    <div class="col-md-12">
                        <asp:Button ID="pathogen_specific_submit" runat="server" Text="Submit" CssClass="btn-success btn-lg" OnClick="pathogen_specific_submit_Click" />
                    </div>
                </div>
                  <div class="row">
                    <div class="col-md-12">
                        <p>
                            <br />
                        </p>
                    </div>
                </div>
                <div class="row">
                 
                 <div class="col-md-offset-1 col-md-10" style="font-size:large;">
                    <asp:GridView ID="pathogen_specific_gridview" runat="server" Width="100%" CellPadding="4" PageSize="100" ForeColor="#333333" GridLines="Both" AllowPaging="true" OnPageIndexChanging="pathogen_specific_gridview_PageIndexChanging" BorderColor="Black" BorderWidth="2px" HorizontalAlign="Left" ShowHeaderWhenEmpty="true">
                        <AlternatingRowStyle BackColor="Transparent" ForeColor="Black" HorizontalAlign="Left" />
                        <RowStyle HorizontalAlign="Left" />
                        <EditRowStyle BackColor="Transparent" />
                        <FooterStyle BackColor="Transparent" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" />
                        <HeaderStyle BackColor="Transparent" Font-Bold="True" ForeColor="White" HorizontalAlign="Center"/>
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="Transparent" ForeColor="Black" />
                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#E9E7E2" />
                        <SortedAscendingHeaderStyle BackColor="#506C8C" />
                        <SortedDescendingCellStyle BackColor="#FFFDF8" />
                        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                    </asp:GridView>
                 </div>
                    
                    </div>
                <div class="row">
                    <div class="col-md-12">
                        <p>
                            <br />
                        </p>
                        <p>
                            <br />
                        </p>
                    </div>
                </div>

            </asp:View>


               
         <asp:View ID="protein_spefic_interactions" runat="server">
                <div class="row text-capitalize text-center">
                        <p>
                         <br />
                     </p>
                     <p>
                         <br />
                     </p>
                <h2 style="font-weight:bold; font-family: 'Roboto Slab', serif;">PROTEIN SPECIFIC INTERACTIONS</h2>    
                </div>
                <div class="clearfix">
                    <p>
                        <br />
                        </p>
                </div>
                <div class="row">
                    <div class="col-md-4">
                    </div>
                    <div class="col-md-2">
                        <table style="width: 100%" class="text-center">
                            <tr>
                                <th style="font-size:x-large;">
                                    Host Organism
                                </th>
                             
                                   
                            </tr>
                            <!--<tr>
                            <td><h2>Host Organism</h2></td>
                            <td>  <asp:DropDownList ID="protein_specific_host_drop" runat="server" AutoPostBack="True" OnSelectedIndexChanged="protein_specific_host_drop_SelectedIndexChanged"></asp:DropDownList> </td>
                            <td>&nbsp; </td>
                            <td><h2>Pathogen</h2></td>
                            <td>   <asp:DropDownList ID="protein_specific_pathogen" runat="server" AutoPostBack="True" OnSelectedIndexChanged="protein_specific_pathogen_SelectedIndexChanged"></asp:DropDownList></td>
                        </tr>-->
                        </table>
                    </div>
                    <div class="col-md-4">
                    <table>
                    <tr>
                        <td>
                             <asp:DropDownList ID="host_organism_drop" runat="server" AutoPostBack="True" OnSelectedIndexChanged="host_organism_drop_SelectedIndexChanged" CssClass="btn-lg dropdown">
                                        <asp:ListItem>Select</asp:ListItem>
                                        <asp:ListItem Value="HOST_PROTEIN">Human</asp:ListItem>
                                        <asp:ListItem Value="PATHOGEN_PROTEIN">Pathogen</asp:ListItem>
                                    </asp:DropDownList>
                        </td>
                        </tr>
                    </table>
                    </div>
                    
                 </div>
                 
                <div class="row">
                    <p>
                        </p>

                    <asp:MultiView ID="MultiView2" runat="server">
                     
                        <asp:View ID="human_host_view" runat="server">
                            <div class="row">
                                <div class="col-md-4"></div>
                                <div class="col-md-2">
                                    <table style="width: 100%; font-size:large;">
                                        <tr>
                                            <th>Uniprot Accession Number</th>
                                           
                                            

                                        </tr>
                                      
                                    </table>
                                </div>
                                <div class="col-md-4">
                                <table>
                                    <tr>
                                        <th>
<asp:TextBox ID="human_id_host_textbox" runat="server" Cssclass="form-control"></asp:TextBox>
                                        </th>
                                        </tr>
                                      <tr>
                                        
                                            <td><p style="color:black;" >Provide Uniprot Accession Number (Example: Q13509) </p></td>    
                                        </tr>
                                    </table>
                                </div>
                            </div>
                            <div class="row" >
                                <p>

                                </p>
                            </div>
                            <div class="row text-center">
                                <asp:Button ID="human_host_submit" runat="server" Text="Submit" CssClass="btn-success btn-lg" OnClick="human_host_submit_Click" />
                            </div>
                           
                              <div class="row" >
                                <p>

                                </p>
                            </div>
                            <div class="row text-center">
                                      <div class="col-md-12">
                            <p>
                                
                            </p>    
                            </div>
                                <div class="col-md-offset-1 col-md-10" style="font-size:large;">
                                    <asp:GridView ID="protein_pathogen_specific_gridview" runat="server" Width="100%" CellPadding="4" Caption="* For Degree 1,2,3, please refer to documentation" ForeColor="Black" GridLines="Both" PageSize="100" AllowPaging="true" ShowHeaderWhenEmpty="true" OnPageIndexChanging="protein_pathogen_specific_gridview_PageIndexChanged" BorderColor="Black" BorderWidth="2px" HorizontalAlign="Left">
                                        <AlternatingRowStyle BackColor="Transparent" ForeColor="Black" HorizontalAlign="left" />
                                        <RowStyle HorizontalAlign="Left" />

                                        <EditRowStyle BackColor="Transparent" />
                                        <FooterStyle BackColor="Transparent" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" />
                                        <HeaderStyle BackColor="Transparent" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" />
                                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                        <RowStyle BackColor="Transparent" ForeColor="Black" />
                                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                        <SortedAscendingCellStyle BackColor="#E9E7E2" />
                                        <SortedAscendingHeaderStyle BackColor="#506C8C" />
                                        <SortedDescendingCellStyle BackColor="#FFFDF8" />
                                        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                                    </asp:GridView>
                                 
                                    </div>
                                </div>
                             <div class="row">
                    <div class="col-md-12">
                        <p>
                            <br />
                        </p>
                        <p>
                            <br />
                        </p>
                    </div>
                </div>
                         
                        </asp:View>

                      
                    <asp:View ID="protein_pathogen" runat="server">
                        <div class="row">
                            <div class="col-md-4">
                                
                            </div>
                            <div class="col-md-2">
                            <table style="width:100%; font-size:large;">
                                   <tr>
                                    <th>Pathogen Name</th>
                                   
                                      
                                    </tr>
                                
                                  <tr>
                                    <td><p>
                                        <br />
                                        </p>

                                    </td>
                                   
                                </tr>
                               <tr>
                                   <th>Uniprot Accesion Number</th>
                                   
                               </tr>
                              
                             
                                </table>
                                
                            </div>
                            <div class="col-md-4">
                            <table>
                                <tr>
                                     <th>
                                        <asp:DropDownList ID="protein_specific_pathogen_name" runat="server" CssClass="btn-lg dropdown" OnSelectedIndexChanged="protein_specific_pathogen_name_SelectedIndexChanged">
                                            <asp:ListItem>Select</asp:ListItem>
                                        </asp:DropDownList></th>
                                </tr>
                                       <tr>
                                    <td><p>
                                        
                                        </p>

                                    </td>
                                   
                                </tr>
                                <tr>
                                    <th>
                                        <asp:TextBox ID="protein_pathogen_id_textbox" runat="server" CssClass="form-control"></asp:TextBox>
                                        <!--<asp:DropDownList ID="protein_id_pathogen" runat="server"></asp:DropDownList>-->
                                    </th>
                                </tr>
                                <tr>
                                <td><p style="color:black;">Provide Uniprot Accession Number (Example: P21605) </p></td></tr>
                                </table>
                            </div>
                    
                        </div>
                        <div class="row text-center">
                            <asp:Button ID="protein_pathogen_submit" runat="server" Text="Submit" CssClass="btn-success btn-lg" OnClick="protein_pathogen_submit_Click" />
                        </div>

                           <div class="clearfix" >
                                <br />
                            </div>

                        <div class="row text-center">
                         <div class="col-md-offset-1 col-md-10" style="font-size:large;">
                            <asp:GridView ID="protein_specific_gridview" runat="server" CellPadding="4" ForeColor="#333333" GridLines="Both" Caption="* For Degree 1,2,3, please refer to documentation" Width="100%" BorderColor="Black" BorderWidth="2px" HorizontalAlign="Center" ShowHeaderWhenEmpty="true" AllowPaging="true" PageSize="100" OnPageIndexChanging="protein_specific_gridview_PageIndexChanging">
                                <AlternatingRowStyle BackColor="Transparent" ForeColor="Black" HorizontalAlign="left" />
                                   <RowStyle HorizontalAlign="Left" />
                                <EditRowStyle BackColor="Transparent" />
                                <FooterStyle BackColor="Transparent" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" />
                                <HeaderStyle BackColor="Transparent" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" />
                                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                <RowStyle BackColor="Transparent" ForeColor="Black" />
                                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                            </asp:GridView>
                         </div>
                            <div class="row">
                            <p>
                                <br />
                            </p>    
                            </div>
                        </div>
                        <div class="row">
                            <p>
                                <br />
                            </p>    
                            </div>
                    </asp:View>

                    </asp:MultiView>
                    
                </div>
            </asp:View>



         <asp:View ID="gene_ontologies" runat="server">
                <div class="row text-capitalize text-center">
                    <p>
                        <br />
                        <br />
                    </p>
                <h2 style="font-weight:bold; font-family: 'Roboto Slab', serif;">GENE ONTOLOGIES</h2>    
                </div>
                <div class="clearfix">
                    <p>
                        <br />
                        </p>
                </div>
                      <div class="row">
                          <div class="col-md-4">
                             
                          </div>
                          <div class="col-md-2">
                    <table style="width:100%; font-size:x-large;">
                        <tr>
                            <th>Host Organism</th>
                            <td>
                               </td>
                        </tr>
                    
                    </table>
                              </div>
                          <div class="col-md-4">
                          <table>
                              <tr>
                                  <th> <asp:DropDownList ID="gene_ontologies_drop" runat="server" CssClass="btn-lg dropdown-toggle" AutoPostBack="True" OnSelectedIndexChanged="gene_ontologies_drop_SelectedIndexChanged">
                                    <asp:ListItem>Select</asp:ListItem>
                                    <asp:ListItem Value="HOST_PROTEIN">Human</asp:ListItem>
                                    <asp:ListItem Value="PATHOGEN_PROTEIN">Pathogen</asp:ListItem>
                                </asp:DropDownList></th>
                              </tr>
                          </table>    
                          </div>

                    </div>
           
                <div class="row">
                    <asp:MultiView ID="MultiView3" runat="server">
                         
                        <asp:View ID="human_protein" runat="server">
                          
                            <div class="row">
                                <p>
                                    
                                </p>
                                <div class="col-md-4">
                                    
                                </div>
                                <div class="col-md-2">
                                <table style="width:100%; font-size:large;">
                                    <tr>
                                        <th>Uniprot Accesion Number</th>
                                        <td>
                                            </td>
                                        
                                    </tr>
                           
                                </table>
                                    
                                </div>
                                <div class="col-md-4">
                                <table style="font-size:large;">
                                <tr>
                                    <th>
                                        <asp:TextBox ID="gene_ontologies_human_uniprot_textbox" runat="server" CssClass="form-control"> </asp:TextBox>
                                    </th>
                                </tr>  
                                             <tr>
                                      
                                        <td>	
Provide Uniprot Accession Number (Example: Q13509)</td> 
                                    </tr>
                                </table>
                                </div>
                                </div>
                          
                                <div class="row text-center">
                                      <p>
                                    
                                </p>
                                    <asp:Button ID="gene_ontologies_human_uniprot_submit" CssClass="text-center btn-success btn-lg" runat="server" Text="Submit" OnClick="gene_ontologies_human_uniprot_submit_Click" />
                                </div>
                            <div class="row">
                                <p>
                                    <br />
                                </p>
                            </div>
                            <div class="row text-center">
                           <div class="col-md-offset-1 col-md-10" style="font-size:large;">
                                <asp:GridView ID="gene_ontologies_human_uniprot_gridview" runat="server" Width="100%" CellPadding="4" ForeColor="#333333" BorderColor="Black" BorderWidth="2px" HorizontalAlign="Left" GridLines="Both" ShowHeaderWhenEmpty="true" AllowPaging="true" PageSize="100" OnPageIndexChanging="gene_ontologies_human_uniprot_gridview_PageIndexChanging1" >
                                    <RowStyle HorizontalAlign="Left" />

                                <AlternatingRowStyle BackColor="Transparent" ForeColor="Black" HorizontalAlign="Left" />
                                <EditRowStyle BackColor="Transparent" />
                                <FooterStyle BackColor="Transparent" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" />
                                <HeaderStyle BackColor="Transparent" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" />
                                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                <RowStyle BackColor="Transparent" ForeColor="Black" />
                                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                                </asp:GridView>
                           </div>
                            </div>

                            <div class="row">
                                <p>
                                    <br />
                                </p>
                                <p>
                                    <br />
                                </p>
                            </div>
                           
                                

                        </asp:View>
                        <asp:View ID="gene_ontology_pathogen_protein" runat="server">
                            <div class="row">
                                <p>
                                    </p>
                                <div class="col-md-4">
                                    
                                </div>
                                <div class="col-md-2">
                                <table style="width:100%; font-size:large;">
                                    <!--<tr>
                                        <th>Pathogen</th>
                                        <th>
                                            <asp:DropDownList ID="gene_ontology_pathogen_drop" runat="server"></asp:DropDownList></th>

                                    </tr>-->
                                    <tr>
                                        <th>Uniprot Accession Number</th>
                                      
                                  

                                    </tr>
                                  
                                    </table>

                                    </div>
                                <div class="col-md-4">
                                <table style="font-size:large;">
                                    <tr>
                                        <th>
                                            <asp:TextBox ID="gene_ontology_pathogen_protein_textbox" runat="server" CssClass="form-control"></asp:TextBox>
                                        </th>
                                        <tr>
                                                        <td>	
Provide Uniprot Accession Number (Example: P21605)</td>
                                        </tr>
                                    </tr>
                                </table>    
                                </div>

                            </div>
                              <div class="row">
                                <p>
                                    
                                </p>
                            </div>
                          
                            <div class="row text-center">
                                <asp:Button ID="gene_ontology_pathogen_protein_submit" CssClass="text-center btn-success btn-lg" runat="server" Text="Submit" OnClick="gene_ontology_pathogen_protein_submit_Click" />
                                </div>
                           <div class="row">
                                <p>
                                    <br />
                                </p>
                            </div>
                               <div class="row text-center">
                                   <div class="col-md-offset-1 col-md-10" style="font-size:large;">
                            <table style="width:100%">
                                <asp:GridView ID="gene_ontology_pathogen_protein_gridview" runat="server" Width="100%" CellPadding="4" ForeColor="#333333" BorderColor="Black" BorderWidth="2px" HorizontalAlign="Left" GridLines="Both" ShowHeaderWhenEmpty="true" AllowPaging="true" PageSize="100" OnPageIndexChanging="gene_ontology_pathogen_protein_gridview_PageIndexChanging1">
                                    <AlternatingRowStyle BackColor="Transparent" ForeColor="Black" HorizontalAlign="Left" />
                                    <RowStyle HorizontalAlign="Left" />
                                <EditRowStyle BackColor="Transparent" />
                                <FooterStyle BackColor="Transparent" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" />
                                <HeaderStyle BackColor="Transparent" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" />
                                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                <RowStyle BackColor="Transparent" ForeColor="Black" />
                                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                                </asp:GridView>
                            </table>    
                                       </div>
                                   <div class="row">
                                   <p>
                                       <br />
                                   </p>    
                                   </div>
                            </div>
                            <div class="row">
                                   <p>
                                       <br />
                                   </p>    
                                   </div>
                        </asp:View>
                    </asp:MultiView>
                </div>
                
            </asp:View>



         <asp:View ID="interaction_detection_method" runat="server">
                <div class="row text-capitalize text-center">
                    <p>
                        <br />
                        <br />
                        </p>
                <h2 style="font-weight:bold; font-family: 'Roboto Slab', serif;">INTERACTION DETECTION METHOD</h2>    
                </div>
                <div class="clearfix">
                    <p>
                        <br />
                    </p>
                </div>
                <div class="row">
                    <div class="col-md-4">
                        
                    </div>
                    <div class="col-md-2">
                <table style="width:100%; font-size:x-large;">
                    <tr>
                        <th>Detection Method</th>
                     
                    </tr>
                </table>    
                        </div>
                    <div class="col-md-4">
                    <table style="font-size:large;">
                        <tr>
                            <th> <asp:DropDownList ID="interaction_detection_method_drop" runat="server" OnSelectedIndexChanged="interaction_detection_method_drop_SelectedIndexChanged" CssClass="btn-lg dropdown-toggle">
                                    <asp:ListItem>Select</asp:ListItem>
                                </asp:DropDownList></th>
                        </tr>
                        </table>
                    </div>
                </div>
                <div class="row">
                   <p>
                       <br />
                       </p>
                </div>
                <div class="row text-center">
                    <asp:Button ID="interaction_detection_method_submit" CssClass="btn-success btn-lg text-center" runat="server" Text="Submit" OnClick="interaction_detection_method_submit_Click" />
                </div>
                <div class="row">
                                <p>
                                    <br />
                                </p>
                            </div>
                <div class="row text-center">
                    <div class="col-md-offset-1 col-md-10" style="font-size:large;">
                    <asp:GridView ID="interaction_detection_method_gridview" Width="100%" CellPadding="4" runat="server" ForeColor="Transparent" BorderColor="Black" BorderWidth="2px" GridLines="Both" AllowPaging="true" PageSize="100" OnPageIndexChanging="interaction_detection_method_gridview_PageIndexChanged" ShowHeaderWhenEmpty="true">
                        <AlternatingRowStyle BackColor="Transparent" ForeColor="Black" HorizontalAlign="Left" />
                        <RowStyle HorizontalAlign="Left" />
                        
                                <EditRowStyle BackColor="Transparent" HorizontalAlign="Left" />
                                <FooterStyle BackColor="Transparent" Font-Bold="True" ForeColor="White" />
                       
                                <HeaderStyle BackColor="Transparent" Font-Bold="True" ForeColor="White"/>
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                <RowStyle BackColor="Transparent" ForeColor="Black" />
                                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                    </asp:GridView>
                        </div>
                </div>
                                <div class="row">
                                <p>
                                    <br />
                                </p>
                                    <p>
                                    <br />
                                </p>
                            </div>
            </asp:View>



         <asp:View ID="interactors" runat="server">
                  <div class="row text-capitalize text-center">
                    <p>
                        <br />
                        <br />
                    </p>
                      </div>
              <div class="row text-capitalize text-center">
                    <h2 style="font-weight: bold; font-family: 'Roboto Slab', serif;">INTERACTORS</h2>
                </div>
                <div class="clearfix">
                    <br />
                </div>
              

                <div class="row">
                    <div class="col-md-10 col-md-offset-1">
                    <div class="col-md-6 pull-left">

                           <div class="row">

                            <div class="col-md-11">
                                <table style="width: 100%; font-size:large;">
                                    <th>Pathogen Interactors</th>
                                    <tr>
                                        <td><p>
                                            <br />
                                            </p></td>
                                    </tr>
                                    <tr>
                                        <td>Pathogen's Uniprot Accession No.</td>
                                        <th>
                                            <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox></th>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td style="font-size:small;">	
Provide Uniprot Accession Number (Example: P21605)</td>
                                    </tr>

                                </table>
                            </div>
                            <div class="col-md-1">
                                <p>
                                    <br />
                                </p>
                                <h2>OR</h2>
                            </div>
                        </div>
                        <div class="row text-center">
                            <p>

                            </p>
                            <asp:Button ID="Button1" runat="server" Text="Submit" CssClass="btn-success btn-lg text-center" OnClick="Button1_Click" />
                        </div>

                        <div class="clearfix">
                            <br />
                        </div>


                    </div>


                    <div class="col-md-6 pull-right">
                          <div class="row">
                            <div class="col-md-1">
                                <p>
                                    <br />
                                </p>
                                <h2></h2>
                            </div>

                            <div class="col-md-11">
                                <table style="width: 100%; font-size:large;">
                                    <th>Human Interactors</th>
                                      <tr>
                                        <td><p>
                                            <br />
                                            </p></td>
                                    </tr>
                                    <tr>
                                        <td>Human's uniprot Accession No.</td>
                                        <th>
                                            <asp:TextBox ID="interactors_human_protein_id_textbox" runat="server" CssClass="form-control"></asp:TextBox></th>

                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td style="font-size:small;">	
Provide Uniprot Accession Number (Example: Q13509)</td>
                                    </tr>

                                </table>
                            </div>
                        </div>
                        <div class="row text-center">
                            <p>
                                </p>
                            <asp:Button ID="interactors_human_submit" runat="server" Text="Submit" CssClass="btn-success btn-lg text-center" OnClick="interactors_human_submit_Click" />
                        </div>

                    </div>

                    <div class="row text-center">
                        <div class="col-md-12" style="font-size:large;">
                            <asp:GridView ID="GridView2" Width="95%" CellPadding="4" runat="server" ForeColor="Transparent" BorderColor="Black" BorderWidth="2px" GridLines="Both" AllowPaging="true" PageSize="100" OnPageIndexChanging="GridView2_PageIndexChanging" ShowHeaderWhenEmpty="true">
                                <AlternatingRowStyle BackColor="Transparent" ForeColor="Black" HorizontalAlign="Left" />
                                <RowStyle HorizontalAlign="Left" />

                                <EditRowStyle BackColor="Transparent" HorizontalAlign="Left" />
                                <FooterStyle BackColor="Transparent" Font-Bold="True" ForeColor="White" />

                                <HeaderStyle BackColor="Transparent" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                <RowStyle BackColor="Transparent" ForeColor="Black" />
                                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                            </asp:GridView>
                        </div>
                    </div>

                    <div class="row">
                        <p>
                            <br />
                        </p>

                    </div>

                    <div class="row text-center">
                        <div class="col-md-12" style="font-size:large;">
                            <asp:GridView ID="GridView3" Width="95%" CellPadding="4" runat="server" ForeColor="Transparent" BorderColor="Black" BorderWidth="2px" GridLines="Both" AllowPaging="true" PageSize="100" OnPageIndexChanging="GridView3_PageIndexChanging" ShowHeaderWhenEmpty="true">
                                <AlternatingRowStyle BackColor="Transparent" ForeColor="Black" HorizontalAlign="Left" />
                                <RowStyle HorizontalAlign="Left" />

                                <EditRowStyle BackColor="Transparent" HorizontalAlign="Left" />
                                <FooterStyle BackColor="Transparent" Font-Bold="True" ForeColor="White" />

                                <HeaderStyle BackColor="Transparent" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                <RowStyle BackColor="Transparent" ForeColor="Black" />
                                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                            </asp:GridView>
                        </div>
                          <div class="row">
                        <p>
                            <br />
                        </p>

                    </div>
                    </div>

                      <div class="row">
                        <p>
                            <br />
                        </p>

                    </div>

                        <div class="row text-center">
                    <div class="col-md-12" style="font-size:large;">
                    
                                         <asp:GridView ID="interactors_pathogen_gridview" Width="95%" CellPadding="4" runat="server" ForeColor="Transparent" BorderColor="Black" BorderWidth="2px" GridLines="Both" AllowPaging="true" PageSize="100" OnPageIndexChanging="interactors_pathogen_gridview_PageIndexChanging">
                                    <AlternatingRowStyle BackColor="Transparent" ForeColor="Black" HorizontalAlign="Left" />
                                <RowStyle HorizontalAlign="Left" />

                                <EditRowStyle BackColor="Transparent" HorizontalAlign="Left" />
                                <FooterStyle BackColor="Transparent" Font-Bold="True" ForeColor="White" />

                                <HeaderStyle BackColor="Transparent" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                <RowStyle BackColor="Transparent" ForeColor="Black" />
                                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />

                                </asp:GridView>    
                        </div>
                        
                            </div>
                                 <div class="row">
                        <p>
                            <br />
                        </p>

                    </div>

                    <div class="row text-center">
                        <div class="col-md-12" style="font-size:large;">
                                         <asp:GridView ID="GridView1" runat="server" Width="95%" CellPadding="4" ForeColor="Transparent" BorderColor="Black" BorderWidth="2px" GridLines="Both" AllowPaging="true" PageSize="100" OnPageIndexChanging="GridView1_PageIndexChanging">
                                    <AlternatingRowStyle BackColor="Transparent" ForeColor="Black" HorizontalAlign="Left" />
                                <RowStyle HorizontalAlign="Left" />

                                <EditRowStyle BackColor="Transparent" HorizontalAlign="Left" />
                                <FooterStyle BackColor="Transparent" Font-Bold="True" ForeColor="White" />

                                <HeaderStyle BackColor="Transparent" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                <RowStyle BackColor="Transparent" ForeColor="Black" />
                                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                                </asp:GridView> 
                            </div>
                            </div>

                             <div class="row">
                        <p>
                            <br />
                        </p>

                    </div>

                


                        </div>
                </div>

                          
            </asp:View>


         <asp:View ID="test_view" runat="server">


             <div class="row text-capitalize text-center">
                 <p>
                     <br />
                     <br />
                 </p>
                 <h2 style="font-weight: bold; font-family: 'Roboto Slab', serif;">Interactors</h2>
             </div>
                <div class="clearfix">
                    <p>
                        <br />
                        </p>
                </div>
                      <div class="row">
                          <div class="col-md-4">
                             
                          </div>
                          <div class="col-md-2">
                    <table style="width:100%; font-size:x-large;">
                        <tr>
                            <th>Host Organism</th>
                            <td>
                               </td>
                        </tr>
                    
                    </table>
                              </div>
                          <div class="col-md-4">
                          <table>
                              <tr>
                                  <th> <asp:DropDownList ID="test_drop" runat="server" CssClass="btn-lg dropdown-toggle" AutoPostBack="True" OnSelectedIndexChanged="test_drop_SelectedIndexChanged">
                                    <asp:ListItem>Select</asp:ListItem>
                                    <asp:ListItem Value="HOST_PROTEIN">Human</asp:ListItem>
                                    <asp:ListItem Value="PATHOGEN_PROTEIN">Pathogen</asp:ListItem>
                                </asp:DropDownList></th>
                              </tr>
                          </table>    
                          </div>

                    </div>
           
                <div class="row">
                    <asp:MultiView ID="test_multiview" runat="server">
                         
                        <asp:View ID="test_human_view" runat="server">
                          
                            <div class="row">
                                <p>
                                    
                                </p>
                                <div class="col-md-4">
                                    
                                </div>
                                <div class="col-md-2">
                                <table style="width:100%; font-size:large;">
                                    <tr>
                                        <th>Uniprot Accesion Number</th>
                                        <td>
                                            </td>
                                        
                                    </tr>
                           
                                </table>
                                    
                                </div>
                                <div class="col-md-4">
                                <table style="font-size:large;">
                                <tr>
                                    <th>
                                        <asp:TextBox ID="text_human_textbox" runat="server" CssClass="form-control"> </asp:TextBox>
                                    </th>
                                </tr>  
                                             <tr>
                                      
                                                 <td>Provide Uniprot Accession Number (Example: Q13509)</td> 
                                    </tr>
                                </table>
                                </div>
                                </div>
                          
                                <div class="row text-center">
                                      <p>
                                    
                                </p>
                                    <asp:Button ID="test_human_submit" CssClass="text-center btn-success btn-lg" runat="server" Text="Submit" OnClick="test_human_submit_Click" />
                                </div>
                            <div class="row">
                                <p>
                                    <br />
                                </p>
                            </div>
                            <div class="row text-center">
                           <div class="col-md-offset-1 col-md-10" style="font-size:large;">
                                <asp:GridView ID="test_human_gridview" runat="server" Width="100%" CellPadding="4" ForeColor="#333333" BorderColor="Black" BorderWidth="2px" HorizontalAlign="Left" GridLines="Both" ShowHeaderWhenEmpty="true" AllowPaging="true" PageSize="100" OnPageIndexChanging="test_human_gridview_PageIndexChanging" >
                                    <RowStyle HorizontalAlign="Left" />

                                <AlternatingRowStyle BackColor="Transparent" ForeColor="Black" HorizontalAlign="Left" />
                                <EditRowStyle BackColor="Transparent" />
                                <FooterStyle BackColor="Transparent" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" />
                                <HeaderStyle BackColor="Transparent" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" />
                                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                <RowStyle BackColor="Transparent" ForeColor="Black" />
                                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                                </asp:GridView>
                           </div>
                           
                          <div class="row">
                                <p>
                                    <br />
                                </p>
                            </div>

                            </div>
                            
                                 <div class="row text-center">
                                        <div class="col-md-offset-1 col-md-10" style="font-size:large;">
                                <asp:GridView ID="test_human_gridview_2" runat="server" Width="100%" CellPadding="4" ForeColor="#333333" BorderColor="Black" BorderWidth="2px" HorizontalAlign="Left" GridLines="Both" ShowHeaderWhenEmpty="true" AllowPaging="true" PageSize="100" OnPageIndexChanging="test_human_gridview_2_PageIndexChanging" >
                                    <RowStyle HorizontalAlign="Left" />

                                <AlternatingRowStyle BackColor="Transparent" ForeColor="Black" HorizontalAlign="Left" />
                                <EditRowStyle BackColor="Transparent" />
                                <FooterStyle BackColor="Transparent" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" />
                                <HeaderStyle BackColor="Transparent" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" />
                                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                <RowStyle BackColor="Transparent" ForeColor="Black" />
                                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                                </asp:GridView>
                           </div>
                                </div>

                            <div class="row">
                                <p>
                                    <br />
                                </p>
                                <p>
                                    <br />
                                </p>
                            </div>
                           
                                

                        </asp:View>
                        <asp:View ID="test_pathogen_view" runat="server">
                            <div class="row">
                                <p>
                                    </p>
                                <div class="col-md-4">
                                    
                                </div>
                                <div class="col-md-2">
                                <table style="width:100%; font-size:large;">
                                
                                    <tr>
                                        <th>Uniprot Accession Number</th>
                                      
                                  

                                    </tr>
                                  
                                    </table>

                                    </div>
                                <div class="col-md-4">
                                <table style="font-size:large;">
                                    <tr>
                                        <th>
                                            <asp:TextBox ID="test_pathogen_textbox" runat="server" CssClass="form-control"></asp:TextBox>
                                        </th>
                                        <tr>
                                            <td>Provide Uniprot Accession Number (Example: P11484)</td>
                                        </tr>
                                    </tr>
                                </table>    
                                </div>

                            </div>
                              <div class="row">
                                <p>
                                    
                                </p>
                            </div>
                          
                            <div class="row text-center">
                                <asp:Button ID="test_pathogen_submit" CssClass="text-center btn-success btn-lg" runat="server" Text="Submit" OnClick="test_pathogen_submit_Click" />
                                </div>
                           <div class="row">
                                <p>
                                    <br />
                                </p>
                            </div>
                               <div class="row text-center">
                                   <div class="col-md-offset-1 col-md-10" style="font-size:large;">
                            <table style="width:100%">
                                <asp:GridView ID="test_pathogen_gridview" runat="server" Width="100%" CellPadding="4" ForeColor="#333333" BorderColor="Black" BorderWidth="2px" HorizontalAlign="Left" GridLines="Both" ShowHeaderWhenEmpty="true" AllowPaging="true" PageSize="100" OnPageIndexChanging="gene_ontology_pathogen_protein_gridview_PageIndexChanging1">
                                    <AlternatingRowStyle BackColor="Transparent" ForeColor="Black" HorizontalAlign="Left" />
                                    <RowStyle HorizontalAlign="Left" />
                                <EditRowStyle BackColor="Transparent" />
                                <FooterStyle BackColor="Transparent" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" />
                                <HeaderStyle BackColor="Transparent" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" />
                                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                <RowStyle BackColor="Transparent" ForeColor="Black" />
                                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                                </asp:GridView>
                            </table>    
                                       </div>
                                   <div class="row">
                                   <p>
                                       <br />
                                   </p>    
                                   </div>
                            </div>

                               <div class="row text-center">
                                   <div class="col-md-offset-1 col-md-10" style="font-size:large;">
                            <table style="width:100%">
                                <asp:GridView ID="test_pathogen_gridview_2" runat="server" Width="100%" CellPadding="4" ForeColor="#333333" BorderColor="Black" BorderWidth="2px" HorizontalAlign="Left" GridLines="Both" ShowHeaderWhenEmpty="true" AllowPaging="true" PageSize="100" OnPageIndexChanging="test_pathogen_gridview_2_PageIndexChanging">
                                    <AlternatingRowStyle BackColor="Transparent" ForeColor="Black" HorizontalAlign="Left" />
                                    <RowStyle HorizontalAlign="Left" />
                                <EditRowStyle BackColor="Transparent" />
                                <FooterStyle BackColor="Transparent" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" />
                                <HeaderStyle BackColor="Transparent" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" />
                                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                <RowStyle BackColor="Transparent" ForeColor="Black" />
                                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                                </asp:GridView>
                            </table>    
                                       </div>
                                   <div class="row">
                                   <p>
                                       <br />
                                   </p>    
                                   </div>
                            </div>

                            <div class="row">
                                   <p>
                                       <br />
                                   </p>    
                                   </div>
                        </asp:View>
                    </asp:MultiView>
                </div>


         </asp:View>


         <asp:View ID="common_interactors" runat="server">


             <div class="row text-capitalize text-center">
                 <p>
                     <br />
                     <br />
                 </p>
                 <h2 style="font-weight: bold; font-family: 'Roboto Slab', serif;">Common Interactors</h2>
             </div>
                <div class="clearfix">
                    <p>
                        <br />
                        </p>
                </div>
                      <div class="row">
                          <div class="col-md-4">
                             
                          </div>
                          <div class="col-md-2">
                    <table style="width:100%; font-size:x-large;">
                        <tr>
                            <th>Host Organism</th>
                            <td>
                               </td>
                        </tr>
                    
                    </table>
                              </div>
                          <div class="col-md-4">
                          <table>
                              <tr>
                                  <th> <asp:DropDownList ID="common_drop" runat="server" CssClass="btn-lg dropdown-toggle" AutoPostBack="True" OnSelectedIndexChanged="common_drop_SelectedIndexChanged">
                                    <asp:ListItem>Select</asp:ListItem>
                                    <asp:ListItem Value="HOST_PROTEIN">Human</asp:ListItem>
                                    <asp:ListItem Value="PATHOGEN_PROTEIN">Pathogen</asp:ListItem>
                                </asp:DropDownList></th>
                              </tr>
                          </table>    
                          </div>

                    </div>
           
                <div class="row">
                    <asp:MultiView ID="common_multiview" runat="server">
                         
                        <asp:View ID="common_human_view" runat="server">
                          
                            <div class="row">
                                <p>
                                    
                                </p>
                                <div class="col-md-4">
                                    
                                </div>
                                <div class="col-md-2">
                                <table style="width:100%; font-size:large;">
                                    <tr>
                                        <th>Uniprot Accesion Numbers</th>
                                        <td>
                                            </td>
                                        
                                    </tr>
                           
                                </table>
                                    
                                </div>
                                <div class="col-md-4">
                                <table style="font-size:large;">
                                <tr>
                                    <th>
                                        <asp:TextBox ID="common_human_text_1" runat="server" CssClass="form-control"> </asp:TextBox>
                                    </th>
                                    <th>
                                    <p>
                                        &amp; 

                                    </p>    
                                    </th>
                                    <th>
                                         <asp:TextBox ID="common_human_text_2" runat="server" CssClass="form-control"> </asp:TextBox>
                                    </th>
                                </tr>  
                                     
                                </table>

                                </div>
                                </div>
                            <div class="row">
                            <div class="col-md-4">
                                </div>
                                <div class="col-md-2">
                                </div>
                                <div class="col-md-6">
                                    <table>
                                      <tr>
                                            <td>Provide Uniprot Accession Numbers</td>
                                        </tr>
                                        </table>
                                </div>


                            </div>
                          
                                <div class="row text-center">
                                      <p>
                                    
                                </p>
                                    <asp:Button ID="common_human_submit" CssClass="text-center btn-success btn-lg" runat="server" Text="Submit" OnClick="common_human_submit_Click" />
                                </div>
                            <div class="row">
                                <p>
                                    <br />
                                </p>
                            </div>
                            <div class="row text-center">
                           <div class="col-md-offset-1 col-md-10" style="font-size:large;">
                                <asp:GridView ID="common_human_gridview" runat="server" Width="100%" CellPadding="4" ForeColor="#333333" BorderColor="Black" BorderWidth="2px" HorizontalAlign="Left" GridLines="Both" ShowHeaderWhenEmpty="true" AllowPaging="true" PageSize="100" OnPageIndexChanging="common_human_gridview_PageIndexChanging" >
                                    <RowStyle HorizontalAlign="Left" />

                                <AlternatingRowStyle BackColor="Transparent" ForeColor="Black" HorizontalAlign="Left" />
                                <EditRowStyle BackColor="Transparent" />
                                <FooterStyle BackColor="Transparent" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" />
                                <HeaderStyle BackColor="Transparent" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" />
                                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                <RowStyle BackColor="Transparent" ForeColor="Black" />
                                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                                </asp:GridView>
                           </div>
                           
                          <div class="row">
                                <p>
                                    <br />
                                </p>
                            </div>

                            </div>
                            
                                 <div class="row text-center">
                                        <div class="col-md-offset-1 col-md-10" style="font-size:large;">
                                <asp:GridView ID="GridView5" runat="server" Width="100%" CellPadding="4" ForeColor="#333333" BorderColor="Black" BorderWidth="2px" HorizontalAlign="Left" GridLines="Both" ShowHeaderWhenEmpty="true" AllowPaging="true" PageSize="100" OnPageIndexChanging="test_human_gridview_2_PageIndexChanging" >
                                    <RowStyle HorizontalAlign="Left" />

                                <AlternatingRowStyle BackColor="Transparent" ForeColor="Black" HorizontalAlign="Left" />
                                <EditRowStyle BackColor="Transparent" />
                                <FooterStyle BackColor="Transparent" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" />
                                <HeaderStyle BackColor="Transparent" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" />
                                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                <RowStyle BackColor="Transparent" ForeColor="Black" />
                                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                                </asp:GridView>
                           </div>
                                </div>

                            <div class="row">
                                <p>
                                    <br />
                                </p>
                                <p>
                                    <br />
                                </p>
                            </div>
                           
                                

                        </asp:View>
                        <asp:View ID="common_pathogen_view" runat="server">
                            <div class="row">
                                <p>
                                    </p>
                                <div class="col-md-4">
                                    
                                </div>
                                <div class="col-md-2">
                                <table style="width:100%; font-size:large;">
                                
                                    <tr>
                                        <th>Uniprot Accession Number</th>
                                      
                                  

                                    </tr>
                                  
                                    </table>

                                    </div>
                                <div class="col-md-4">
                                <table style="font-size:large;">
                                    <tr>
                                        <th>
                                            <asp:TextBox ID="common_pathogen_textbox" runat="server" CssClass="form-control"></asp:TextBox>
                                        </th>
                                        <th>
                                            <p>&amp;</p>
                                            </th>
                                        <th>
                                            <asp:TextBox ID="common_pathogen_textbox_2" runat="server" CssClass="form-control"></asp:TextBox>
                                        </th>
                                     
                                    </tr>
                                </table>    
                                </div>

                            </div>
                              <div class="row">
                                  <div class="col-md-4">
                                      </div>
                                  <div class="col-md-2">
                                      
                                  </div>
                                  <div class="col-md-4">
                                <table>
                                       <tr>
                                            <td>Provide Uniprot Accession Numbers</td>
                                        </tr>
                                    </table>
                                      </div>
                            </div>
                          
                            <div class="row text-center">
                                <asp:Button ID="common_pathogen_submit" CssClass="text-center btn-success btn-lg" runat="server" Text="Submit" OnClick="common_pathogen_submit_Click" />
                                </div>
                           <div class="row">
                                <p>
                                    <br />
                                </p>
                            </div>
                               <div class="row text-center">
                                   <div class="col-md-offset-1 col-md-10" style="font-size:large;">
                            <table style="width:100%">
                                <asp:GridView ID="common_pathogen_gridview" runat="server" Width="100%" CellPadding="4" ForeColor="#333333" BorderColor="Black" BorderWidth="2px" HorizontalAlign="Left" GridLines="Both" ShowHeaderWhenEmpty="true" AllowPaging="true" PageSize="100" OnPageIndexChanging="common_pathogen_gridview_PageIndexChanging">
                                    <AlternatingRowStyle BackColor="Transparent" ForeColor="Black" HorizontalAlign="Left" />
                                    <RowStyle HorizontalAlign="Left" />
                                <EditRowStyle BackColor="Transparent" />
                                <FooterStyle BackColor="Transparent" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" />
                                <HeaderStyle BackColor="Transparent" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" />
                                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                <RowStyle BackColor="Transparent" ForeColor="Black" />
                                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                                </asp:GridView>
                            </table>    
                                       </div>
                                   <div class="row">
                                   <p>
                                       <br />
                                   </p>    
                                   </div>
                            </div>

                               <div class="row text-center">
                                   <div class="col-md-offset-1 col-md-10" style="font-size:large;">
                            <table style="width:100%">
                                <asp:GridView ID="GridView7" runat="server" Width="100%" CellPadding="4" ForeColor="#333333" BorderColor="Black" BorderWidth="2px" HorizontalAlign="Left" GridLines="Both" ShowHeaderWhenEmpty="true" AllowPaging="true" PageSize="100" OnPageIndexChanging="test_pathogen_gridview_2_PageIndexChanging">
                                    <AlternatingRowStyle BackColor="Transparent" ForeColor="Black" HorizontalAlign="Left" />
                                    <RowStyle HorizontalAlign="Left" />
                                <EditRowStyle BackColor="Transparent" />
                                <FooterStyle BackColor="Transparent" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" />
                                <HeaderStyle BackColor="Transparent" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" />
                                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                <RowStyle BackColor="Transparent" ForeColor="Black" />
                                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                                </asp:GridView>
                            </table>    
                                       </div>
                                   <div class="row">
                                   <p>
                                       <br />
                                   </p>    
                                   </div>
                            </div>

                            <div class="row">
                                   <p>
                                       <br />
                                   </p>    
                                   </div>
                        </asp:View>
                    </asp:MultiView>
                </div>

         </asp:View>

            
         
         <asp:View ID="documentation" runat="server">
                <p>
                    <br />
                </p>
                <p>
                    <br />
                </p>
                <center><h2 style="color:black;font-weight:bold; font-family: 'Roboto Slab', serif;">DOCUMENTATION</h2></center>
                <div class="row">
                <p>
<br />
                </p>    
                </div> 
                <div class="row">
                    <div class="col-md-10 col-md-offset-1" style="font-size:large;">
                        <p class="lead" style="color:black; font-weight:bold; font-size:large; font-family: 'Roboto Slab', serif;" align="justify">
                            <h2>Introduction</h2>
                            <br />
Cardiovascular diseases are one of the world’s leading global killers, accounting for almost
31% of all global deaths. The role microorganisms play in CVDs is controversial and not
completely understood as of today which makes it an important avenue for research.
MorCVD intends to service the needs of such kind of research since identification and
analysis of host pathogen protein interactions is essential for analysis of infectious diseases
and to devise pathway intervention strategies. The host pathogen protein-protein interaction
data has been curated from various databases, along with various other relevant parameters to
enhance the information imparted by the data to users.
                            <br />
<h2>Release Date:</h2>
                            <br />
                            June 15, 2018
                            <br />
                            <br />
<h2>Citations:</h2>
                            <b style="color:black;">[1]</b> Ammari, M.G., et al., HPIDB 2.0: a curated database for host–pathogen interactions.
Database: The Journal of Biological Databases and Curation, 2016. 2016: p. baw103.
                            <br />
<b style="color:black;">[2]</b> Chatr-aryamontri, A., et al., MINT: the Molecular INTeraction database. Nucleic Acids
Research, 2007. 35(Database issue): p. D572-D574.
                            <br />
<b style="color:black;">[3]</b> Stark, C., et al., BioGRID: a general repository for interaction datasets. Nucleic Acids
Research, 2006. 34(Database issue): p. D535-D539.
                            <br />
<b style="color:black;">[4]</b> Launay, G., et al., MatrixDB, the extracellular matrix interaction database: updated
content, a new navigator and expanded functionalities. Nucleic Acids Research, 2015.
43(Database issue): p. D321-D327
                            <br />
<b style="color:black;">[5]</b> The UniProt Consortium, UniProt: the universal protein knowledgebase. Nucleic Acids
Research, 2017. 45(Database issue): p. D158-D169.
                            <br />
<b style="color:black;">[6]</b> Goll, J., et al., MPIDB: the microbial protein interaction database. Bioinformatics, 2008.
24(15): p. 1743-1744.
                            <br />
<b style="color:black;">[7]</b> Navratil, V., et al., VirHostNet: a knowledge base for the management and the analysis of
proteome-wide virus–host interaction networks. Nucleic Acids Research, 2009.
37(Database issue): p. D661-D668.
                            <br />
<b style="color:black;">[8]</b> Lynn, D.J., et al., InnateDB: facilitating systems-level analyses of the mammalian innate
immune response. Molecular Systems Biology, 2008. 4: p. 218-218
                            <br />
<b style="color:black;">[9]</b> Xenarios, I., et al., DIP: the Database of Interacting Proteins. Nucleic Acids Research,
2000. 28(1): p. 289-291
                            <br />
<b style="color:black;">[10]</b> Brown, K.R. and I. Jurisica, Unequal evolutionary conservation of human protein
interactions in interologous networks. Genome Biology, 2007. 8(5): p. R95-R95
                            <br />
<b style="color:black;">[11]</b> Kerrien, S., et al., The IntAct molecular interaction database in 2012. Nucleic Acids
Research, 2012. 40(Database issue): p. D841-D846.
                            <br />
                            <br />
<h2>Documentation</h2>
                            <br />
The contents of the database have been arranged and presented keeping ease of use in mind.
We describe here the contents of each page and the operating procedure to access relevant
data.
                            <br />
                            <br />
<b style="color:black;">Home/MorCVD:</b> The home page provides a brief description of the database detailing the
organisation and tools that are part of the database and the essential parameters listed across
the various pages. The database contains the following tools:
                            <br />
                            
<b style="color:black;"><h3>1. Disease:</h3> </b>
                            
 The Disease page allows the user to select from a list of Cardiovascular
diseases and then lists the following information:
                            <br />
                                                      
 &#9679; The Name of the pathogen involved in the condition.
                            <br />
 &#9679; The Taxonomy id for the pathogen.
                            <br />
 &#9679; The pathogen protein involved in a certain pathway.
                            <br />
 &#9679; The host protein interacting with this pathogen protein.
                            <br />
 &#9679; The relevant PubMed ID listing the interaction.
                            <br />
 &#9679; The Gene Symbol for host protein.
                            <br />
 &#9679; The Gene Symbol for pathogen protein.
                            <br />
 &#9679; The Uniprot entry for host protein.
                            <br />
 &#9679; The Uniprot entry for pathogen protein.
                            <br />
 &#9679; The Source database from where the interaction was derived.
                            <br />
                       <br />
                            
                           <b style="color:black;"> <h3>2. Pathogen Specific Interactions:</h3></b> The page displays a dropdown of 432 pathogens to
select from and lists the following information:
                            <br />
&#9679; The first column lists the pathogen proteins belonging to the pathogen selected
by the user.
                            <br />
&#9679; The second column lists the host proteins, the respective pathogen proteins
interact with.
                            <br />
&#9679; The third column lists the type of the respective interactions.
                            <br />
                            <br />
<b style="color:black;"><h3>3. Protein Specific Interactions:</h3></b> The page lets us choose for proteins from either the
host or the pathogen. The user needs to supply the Uniprot accession number for the
required protein. Additionally, the user is required to select the pathogen name as well
in case pathogen is selected. Once the user inputs the necessary data the page displays
the following information:
                            <br />
&#9679; In case Pathogen has been selected:
                            <br />
1. The human host proteins that have an interaction with the given pathogen
protein, present in the database.
                            <br />
2. The respective Gene ID of human protein.
                            <br />
3. The following three degrees listed:
                            <br />
a. Degree 1: This degree states the no. of pathogen proteins; the host
protein has interactions with, that have been listed in the database.
                            <br />
b. Degree 2: This degree lists the number of microorganisms; whose
proteins have an interaction with the given host protein, present in
the database.
                            <br />
c. Degree 3: This degree is the sum of Degree 1 and Degree 2.
                            <br />

&#9679; In case Human has been selected:
                            <br />
1. The pathogen proteins that have an interaction with the given human
protein, present in the database.
                            <br />
2. The respective Gene ID of pathogen protein
                            <br />
3. The following three degrees are listed:
                            <br />
a. Degree 1: This degree states the number of host proteins, whose
interactions are present in the database, that interact with the
respective pathogen protein.
                            <br />
b. Degree 2: This degree lists the number of pathogens in which the
given protein occurs, for the data present in the database.
                            <br />
c. Degree 3: This degree is the sum of Degree1 and Degree 2.
                            <br />
                            <br />
<b style="color:black;"><h3>4. Gene Ontologies:</h3></b> This page requires the user to select between human or pathogen
from the dropdown “Host Organism”, the user then needs to supply the relevant
Uniprot Accession number. The following data is then displayed:
                            <br />
&#9679; The Gene Ontology Id for the protein.
                            <br />
&#9679; The function of the protein, corresponding to the Gene Ontology Id.
                            <br />
&#9679; The Degree: This is the frequency for the protein possessing the given
function and GO Id for all interactions present in the database.
                            <br />
                            <br />
<b style="color:black;"><h3>5. Interaction Detection Method:</h3></b> The page allows the user to list the interaction data
that can be obtained by a particular Interaction Detection Method, selected from a
drop-down menu. The page lists the host protein, pathogen protein and the interaction
type for each reaction.
                            <br />
                            <br />
<b style="color:black;"><h3>6. Interactors:</h3></b> This page allows us to view all the interactors from the same as well as
different species that may or may not be part of the interactions listed in the database,
for a particular pathogen or host protein. Additionally, we also provide information
regarding whether the given protein happens to be a drug target or not. The
information is listed in the form of two sections:
                            <br />
&#9679; The first section states with a “Yes” or “No” whether the protein given by the
user is a drug target.
                            <br />
&#9679; The second section lists the interactor proteins for the given protein. Providing
such interactor proteins may be significant in case of investigation for cross
talk in different pathways possessing a certain degree of synergism.
                            <br />
                            <br />
<h2 style="font-weight:bold;">FAQs</h2>
                            <br/>
<b style="color:black;"><h3>Q. What is MorCVD?</h3></b>
                            
MorCVD is a database containing data of host - pathogen protein-protein interactions
(HPPPIs) involved in cardiovascular diseases(CVDs). This database covers 19 major
conditions such as Viral myocarditis, Bacterial endocarditis and Dilated
Cardiomyopathy, along with other microbial CVDs.
                            <br />
                            <br />
<b style="color:black;"><h3>Q. Why are HPIs important?</h3></b>
                         
Identification and analysis of host pathogen protein interactions is essential for
analysis of infectious diseases and to devise pathway intervention strategies.
                            <br />
                            <br />
<b style="color:black;"><h3>Q. What are Gene Ontology Ids?</h3></b>
                            
The objective of Gene Ontology ids are to provide controlled vocabularies for the
description of the biological process, molecular function, and cellular component of
gene products.
                            <br/>
                            <br />
<b style="color:black;"><h3>Q. What do the Degrees mean on the Protein Specific Interactions page?</h3></b>
                           
For human proteins the following three degrees have been listed:
                            <br />
Degree 1: This degree states the no. of pathogen proteins; the host protein has
interactions with, that have been listed in the database.
                            <br />
Degree 2: This degree lists the number of microorganisms; whose proteins
have an interaction with the given host protein, present in the database.
                            <br />
Degree 3: This degree is the sum of Degree 1 and Degree 2.
                            <br />
For pathogen proteins the following three degrees have been listed:
                            <br />
Degree 1: This degree states the number of host proteins, whose interactions
are present in the database, that interact with the respective pathogen protein.
                            <br />
Degree 2: This degree lists the number of pathogens in which the given
protein occurs, for the data present in the database.
                            <br />
Degree 3: This degree is the sum of Degree1 and Degree 2.
                            <br />
                            <br />

<b style="color:black;"><h3>Q. Where can I refer to the Uniprot accession proteins for entry in pages such as Gene
Ontologies and Protein Specific Interactions?</h3></b>

There is no provision as such to explicitly list the human and the pathogen proteins
present in the database separately, however one may refer to the pathogen specific
interactions or disease page information and select a protein from the information
that’s listed for a query.
                            <br />
                            <br />
<b style="color:black;"><h3>Q. How do I contact the team?</h3></b>
                            
Click on the contact us page where you may write to us your query. Alternatively
information on the members of the team has been given here.
                            <br />
                            <br />

<b style="color:black;"><h3>Q. Where can we report bugs?</h3></b>
                           
You may mention all bugs and errata in the form on the contact us page.
                        </p>
                        <div class="row">
                        <p>
                            <br />
                            </p>
                        </div>
                    </div>
            </asp:View>
        
            
            
           
            <asp:View ID="contact" runat="server">
                

	

         </asp:View>

           
            
            
            <asp:View ID="team" runat="server">
                     <p>
                    <br />
                </p>
                  <p>
                    <br />
                </p>
             <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
                <center><h2 style="color:black;font-weight:bold; font-family: 'Roboto Slab', serif;">OUR TEAM</h2></center>
                <div class="row">
                <p>
<br />
                </p>    
                </div> 
             <div class="row text-center">



             <div class="container">
                 <div class="row">
                 <div class="col-md-6 pull-left">
                     <div class="our-team img-thumbnail">
                <div class="pic">
                    <img src="images/bt8.jpg">
                    <ul class="social">
                      <li><a href="mailto:admin@sblab-nsit.net" class="fa fa-envelope"></a></li>
                        <li><a href="callto:+911125000110" class="fa fa fa-phone"></a></li>
                    </ul>
                </div>
                <div class="team-content">
                    <h3 class="title" style="color:crimson;">Dr. Sonika Bhatnagar</h3>
                    <span class="post bold" style="color:black; font-weight:bold;">Professor</span>
                </div>
            </div>
                 </div>
                     <div class="col-md-6 pull-right">
                     <p class="lead" style="color:black; font-weight:bold; font-size:large; font-family: 'Roboto Slab', serif;" align="justify">
                         I finished my Ph.D. and Post-Doctoral work in Department of Biophysics, AIIMS in 2002. 
                         Subsequently, I have been associated with the B.E. Biotechnology Program since the very early stages. 
                         During the early years, I was involved with the approval of course and development of basic infrastructure of the Divisional labs. 
                         <br />
                         <br />
                         Currently, I am developing a Computational and Structural Biology Lab. for research and teaching.
                         <br />
                         
                         <a href="https://www.innocentive.com/ar/challenge/bio?userName=ecc999" style="color:brown;">I have been awarded the Innocentive solver award for Identification of top five therapeutic targets for treatment of obesity. </a> 
                         <br />
                         <br />
                         My research interests lie in the application of Computational and Structural Biology tools for gaining insights into Cardiovascular Disease and Bacterial Stress response with a long term focus on Drug target selection, Drug design and Repurposing. 
                         Our work has also featured as Invited commentary on International Atherosclerosis Society Website<a href="www.athero.org" style="color:brown;"> (www.athero.org). </a>
                     </p>
                 </div>
                 </div>

                 <div class="row">
                 <p>
                     <br />
                     </p>
                 </div>
    <div class="row">
        <div class="col-md-4 col-sm-6">
            <div class="our-team img-thumbnail">
                <div class="pic">
                    <img src="images/nirupma.jpg">
                    <ul class="social">
                     <li><a href="mailto:nirupmasingh@sblab-nsit.net" class="fa fa-envelope"></a></li>
                        <li><a href="callto:+911125000110" class="fa fa fa-phone"></a></li>
                    </ul>
                </div>
                <div class="team-content">
                    <h3 class="title" style="color:crimson;">Nirupma Singh</h3>
                    <span class="post" style="color:#047168;">PhD. Scholar</span>
                </div>
            </div>
        </div>
        <div class="col-md-4 col-sm-6">
            <div class="our-team img-thumbnail">
                <div class="pic">
                    <img src="images/venu.jpg">
                    <ul class="social">
                        <li><a href="mailto:venugopalbhatia@sblab-nsit.net" class="fa fa-envelope"></a></li>
                        <li><a href="callto:+911125000110" class="fa fa fa-phone"></a></li>
                        
                    </ul>
                </div>
                <div class="team-content">
                    <h3 class="title" style="color:crimson;">Venugopal Bhatia</h3>
                    <span class="post" style="color:#047168;">B.E. Student</span>
                </div>
            </div>
        </div>
        <div class="col-md-4 col-sm-6">
            <div class="our-team img-thumbnail">
                <div class="pic">
                    <img src="images/shubham.jpeg">
                    <ul class="social">
                        <li><a href="mailto:shubham@sblab-nsit.net" class="fa fa-envelope"></a></li>
                        <li><a href="callto:+911125000110" class="fa fa fa-phone"></a></li>
                    </ul>
                </div>
                <div class="team-content">
                    <h3 class="title" style="color:crimson;">Shubham Singh</h3>
                    <span class="post" style="color:#047168;" >B.E. Student</span>
                </div>
            </div>
        </div>
    </div>
                                 <div class="row">
                <p>
<br />
                </p>    
                </div>
</div>
                 
             </div>
                             <div class="row">
                <p>
<br />
                </p>    
                </div>
         </asp:View>

        </asp:MultiView>

    <!--team css-->

    <style>
        .our-team{
    text-align: center;
    transition: all 0.5s ease 0s;
}
.our-team:hover{
    box-shadow: 0 15px 10px -10px rgba(0, 0, 0, 0.5), 0 1px 4px rgba(0, 0, 0, 0.3), 0 0 40px rgba(0, 0, 0, 0.1) inset;
}
.our-team .pic{
    overflow: hidden;
    position: relative;
}
.our-team .pic:before,
.our-team .pic:after{
    content: "";
    width: 200%;
    height: 80%;
    background: rgba(38,37,37,0.8);
    position: absolute;
    top: -100%;
    left: -4%;
    transform: rotate(45deg);
    transition: all 0.5s ease 0s;
}
.our-team .pic:after{
    background: rgba(8,75,77,0.8);
    top: auto;
    left: auto;
    bottom: -100%;
    right: -4%;
}
.our-team:hover .pic:before{ top: 0; }
.our-team:hover .pic:after{ bottom: 0; }
.our-team .pic img{
    width: 100%;
    height: auto;
}
.our-team .social{
    width: 100%;
    padding: 0;
    margin: 0;
    list-style: none;
    position: absolute;
    bottom: 45%;
    left: 0;
    opacity: 0;
    z-index: 2;
    transition: all 0.5s ease 0.3s;
}
.our-team:hover .social{ opacity: 1; }
.our-team .social li{ display: inline-block; }
.our-team .social li a{
    display: block;
    width: 40px;
    height: 40px;
    line-height: 40px;
    font-size: 20px;
    color: #fff;
    margin-right: 10px;
    position: relative;
    transition: all 0.3s ease 0s;
}
.our-team .social li a:after{
    content: "";
    width: 100%;
    height: 100%;
    background: #db162f;
    border-radius: 0 20px 20px 20px;
    position: absolute;
    top: 0;
    left: 0;
    z-index: -1;
    transition: all 0.3s ease 0s;
}
.our-team .social li a:hover:after{ transform: rotate(180deg); }
.our-team .team-content{ padding: 20px; }
.our-team .title{
    font-size: 22px;
    font-weight: 700;
    letter-spacing: 2px;
    color: #047168;
    text-transform: uppercase;
    margin-bottom: 7px;
}
.our-team .post{
    display: block;
    font-size: 17px;
    font-weight: 600;
    color: #707070;
    text-transform: capitalize;
}
@media only screen and (max-width: 990px){
    .our-team{ margin-bottom: 30px; }
}
        </style>

    <!--team css-->

    


    <style>

footer {
  background: #FCFCFC;
  border-top: 0px solid #DDD;

  font-family: 'Monda', sans-serif;
  font-size: 13px;
  line-height: 16px;
  overflow: hidden;

  text-align: center;
   position: fixed;
    left: 0;
    bottom: 0;
    width: 100%;
    background-color: black;
    color: white;
    text-align: center;
}
footer .footer {
  margin: 0 10px 0 40px;
  padding: 20px 0 10px;
}

</style>


    <footer>
  <div class="footer">
  <p>&copy; <%: DateTime.Now.Year %> - CSBL |  Division of Biological Sciences & Engineering | <a href="http://www.nsit.ac.in/">Netaji Subhas Institute of Technology</a></p>
  </div>
</footer>
 
    </div>
    </div>
</asp:Content>
     
