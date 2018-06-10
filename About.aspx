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
        <li class="active" style="font-weight:bold;">
            <asp:LinkButton ID="LinkButton_Interactors" runat="server" OnClick="LinkButton_Interactors_Click">Interactors & Drug Targets</asp:LinkButton></li>
        <li class="active" style="font-weight:bold;">
            <asp:LinkButton ID="LinkButton_Documentation" runat="server" OnClick="LinkButton_Documentation_Click">Documentation</asp:LinkButton></li>
    <!--<li class="active" style="font-weight:bold;">
    <asp:LinkButton ID="LinkButton_Contact" runat="server" OnClick="LinkButton_Contact_Click">LinkButton</asp:LinkButton></li>-->
</asp:Content>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <!--  
    <div class="jumbotron" style="background-image :url(/images/1.jpg); height:100%;"> 
       

 
  </div>-->
   

     <asp:MultiView ID="MultiView1" runat="server">

            <asp:View ID="home" runat="server">
                <p>
                    <br />
                    </p>
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

                   </p>
                         
                    <asp:Button ID="disease_button" runat="server" Text="Submit" CssClass="btn-success btn-lg" OnClick="disease_button_Click"/>
             <p>

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

                </p>    
                </div>
                <div class="clearfix">
                    
                </div>
                <div class="row">
                    <div class="col-md-4"></div>
                    <div class="col-md-2">
                        <table>
                            <tr>
                        <th style="font-size:x-large;">Select the Pathogen</th>    
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
                            <asp:GridView ID="protein_specific_gridview" runat="server" CellPadding="4" ForeColor="#333333" GridLines="Both" Width="100%" BorderColor="Black" BorderWidth="2px" HorizontalAlign="Center" ShowHeaderWhenEmpty="true">
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
                                <asp:GridView ID="gene_ontologies_human_uniprot_gridview" runat="server" Width="100%" CellPadding="4" ForeColor="#333333" BorderColor="Black" BorderWidth="2px" HorizontalAlign="Left" GridLines="Both" ShowHeaderWhenEmpty="true" >
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
                                <asp:GridView ID="gene_ontology_pathogen_protein_gridview" runat="server" Width="100%" CellPadding="4" ForeColor="#333333" BorderColor="Black" BorderWidth="2px" HorizontalAlign="Left" GridLines="Both" ShowHeaderWhenEmpty="true">
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
                            <asp:GridView ID="GridView3" Width="95%" CellPadding="4" runat="server" ForeColor="Transparent" BorderColor="Black" BorderWidth="2px" GridLines="Both" AllowPaging="true" PageSize="100" OnPageIndexChanging="GridView2_PageIndexChanging" ShowHeaderWhenEmpty="true">
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

                    <!--<div class="row text-center">
                                         <asp:GridView ID="GridView1" runat="server" Width="100%" CellPadding="4" ForeColor="#333333" GridLines="None">
                                    <AlternatingRowStyle BackColor="White" ForeColor="#284775"></AlternatingRowStyle>

                                    <EditRowStyle BackColor="#999999"></EditRowStyle>

                                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White"></FooterStyle>

                                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White"></HeaderStyle>

                                    <PagerStyle HorizontalAlign="Center" BackColor="#284775" ForeColor="White"></PagerStyle>

                                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333"></RowStyle>

                                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333"></SelectedRowStyle>

                                    <SortedAscendingCellStyle BackColor="#E9E7E2"></SortedAscendingCellStyle>

                                    <SortedAscendingHeaderStyle BackColor="#506C8C"></SortedAscendingHeaderStyle>

                                    <SortedDescendingCellStyle BackColor="#FFFDF8"></SortedDescendingCellStyle>

                                    <SortedDescendingHeaderStyle BackColor="#6F8DAE"></SortedDescendingHeaderStyle>
                                </asp:GridView>    
                            </div>

                <div class="row text-center">
                    
                                         <asp:GridView ID="interactors_human_gridview" runat="server" Width="100%" CellPadding="4" ForeColor="#333333" GridLines="None">
                                    <AlternatingRowStyle BackColor="White" ForeColor="#284775"></AlternatingRowStyle>

                                    <EditRowStyle BackColor="#999999"></EditRowStyle>

                                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White"></FooterStyle>

                                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White"></HeaderStyle>

                                    <PagerStyle HorizontalAlign="Center" BackColor="#284775" ForeColor="White"></PagerStyle>

                                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333"></RowStyle>

                                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333"></SelectedRowStyle>

                                    <SortedAscendingCellStyle BackColor="#E9E7E2"></SortedAscendingCellStyle>

                                    <SortedAscendingHeaderStyle BackColor="#506C8C"></SortedAscendingHeaderStyle>

                                    <SortedDescendingCellStyle BackColor="#FFFDF8"></SortedDescendingCellStyle>

                                    <SortedDescendingHeaderStyle BackColor="#6F8DAE"></SortedDescendingHeaderStyle>
                                </asp:GridView>    
                        
                            </div>-->


                        </div>
                </div>

                          
            </asp:View>


            <asp:View ID="documentation" runat="server">
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
<h2>Citations:</h2>
                            <br />
<h2>Documentation</h2>
                            <br />
The contents of the database have been arranged and presented keeping ease of use in mind.
We describe here the contents of each page and the operating procedure to access relevant
data.
                            <br />
Home/MorCVD: The home page provides a brief description of the database detailing the
organisation and tools that are part of the database and the essential parameters listed across
the various pages. The database contains the following tools:
                            <br />
                            
<h3>1. Disease:</h3> 
                            
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
                            
                            <h3>2. Pathogen Specific Interactions:</h3> The page displays a dropdown of 432 pathogens to
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
3. Protein Specific Interactions: The page lets us choose for proteins from either the
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
<h3>4. Gene Ontologies:</h3> This page requires the user to select between human or pathogen
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
<h3>5. Interaction Detection Method:</h3> The page allows the user to list the interaction data
that can be obtained by a particular Interaction Detection Method, selected from a
drop-down menu. The page lists the host protein, pathogen protein and the interaction
type for each reaction.
                            <br />
                            <br />
<h3>6. Interactors:</h3> This page allows us to view all the interactors from the same as well as
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
FAQs
                            <br/>
<h3>Q. What is MorCVD?</h3>
                            <br />
MorCVD is a database containing data of host - pathogen protein-protein interactions
(HPPPIs) involved in cardiovascular diseases(CVDs). This database covers 19 major
conditions such as Viral myocarditis, Bacterial endocarditis and Dilated
Cardiomyopathy, along with other microbial CVDs.
                            <br />
<h3>Q. Why are HPIs important?</h3>
                            <br />
Identification and analysis of host pathogen protein interactions is essential for
analysis of infectious diseases and to devise pathway intervention strategies.
                            <br />
<h3>Q. What are Gene Ontology Ids?</h3>
                            
The objective of Gene Ontology ids are to provide controlled vocabularies for the
description of the biological process, molecular function, and cellular component of
gene products.
                            <br/>
<h3>Q. What do the Degrees mean on the Protein Specific Interactions page?</h3>
                            <br />
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

<h3>Q. Where can I refer to the Uniprot accession proteins for entry in pages such as Gene
Ontologies and Protein Specific Interactions?</h3>
                            <br />

There is no provision as such to explicitly list the human and the pathogen proteins
present in the database separately, however one may refer to the pathogen specific
interactions or disease page information and select a protein from the information
that’s listed for a query.
                            <br />
<h3>Q. How do I contact the team?</h3>
                            <br />
Click on the contact us page where you may write to us your query. Alternatively
information on the members of the team has been given here.
                            <br />
<h3>Q. Is there a provision for adding new data or correcting existing data?</h3>
                            <br />
<h3>Q. Where can we report bugs?</h3>
                            <br />
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
                

	<div class="container-contact100">
		<div class="wrap-contact100">
			<form class="contact100-form validate-form">
				<span class="contact100-form-title">
					Get in Touch
				</span>

				<div class="wrap-input100 validate-input" data-validate="Name is required">
					<input class="input100" id="name" type="text" name="name" placeholder="Name">
					<label class="label-input100" for="name">
						<span class="lnr lnr-user"></span>
					</label>
				</div>

				<div class="wrap-input100 validate-input" data-validate = "Valid email is required: ex@abc.xyz">
					<input class="input100" id="email" type="text" name="email" placeholder="Email">
					<label class="label-input100" for="email">
						<span class="lnr lnr-envelope"></span>
					</label>
				</div>

				<div class="wrap-input100 validate-input" data-validate = "Phone is required">
					<input class="input100" id="phone" type="text" name="phone" placeholder="Phone">
					<label class="label-input100" for="phone">
						<span class="lnr lnr-phone-handset"></span>
					</label>
				</div>

				<div class="wrap-input100 validate-input" data-validate = "Message is required">
					<textarea class="input100" name="message" placeholder="Your message..."></textarea>
				</div>

				<div class="contact100-form-checkbox">
					<input class="input-checkbox100" id="ckb1" type="checkbox" name="copy-mail">
					<label class="label-checkbox100" for="ckb1">
						Send copy to my-email
					</label>
				</div>

				<div class="container-contact100-form-btn">
					<div class="wrap-contact100-form-btn">
						<div class="contact100-form-bgbtn"></div>
						<button class="contact100-form-btn">
							Send Email
						</button>
					</div>
				</div>
			</form>
		</div>
	</div>


         </asp:View>

        </asp:MultiView>
    <style>
        /*---------------------------------------------*/
input {
	outline: none;
	border: none;
}

input[type="number"] {
    -moz-appearance: textfield;
    appearance: none;
    -webkit-appearance: none;
}

input[type="number"]::-webkit-outer-spin-button,
input[type="number"]::-webkit-inner-spin-button {
    -webkit-appearance: none;
}

textarea {
  outline: none;
  border: none;
}

textarea:focus, input:focus {
  border-color: transparent !important;
}

input:focus::-webkit-input-placeholder { color:transparent; }
input:focus:-moz-placeholder { color:transparent; }
input:focus::-moz-placeholder { color:transparent; }
input:focus:-ms-input-placeholder { color:transparent; }

textarea:focus::-webkit-input-placeholder { color:transparent; }
textarea:focus:-moz-placeholder { color:transparent; }
textarea:focus::-moz-placeholder { color:transparent; }
textarea:focus:-ms-input-placeholder { color:transparent; }

input::-webkit-input-placeholder { color: #999999;}
input:-moz-placeholder { color: #999999;}
input::-moz-placeholder { color: #999999;}
input:-ms-input-placeholder { color: #999999;}

textarea::-webkit-input-placeholder { color: #999999;}
textarea:-moz-placeholder { color: #999999;}
textarea::-moz-placeholder { color: #999999;}
textarea:-ms-input-placeholder { color: #999999;}

/*---------------------------------------------*/
button {
	outline: none !important;
	border: none;
	background: transparent;
}

button:hover {
	cursor: pointer;
}

iframe {
	border: none !important;
}


/*---------------------------------------------*/
.container {
	max-width: 1200px;
}


        .container-contact100 {
  width: 100%;  
  min-height: 100vh;
  display: -webkit-box;
  display: -webkit-flex;
  display: -moz-box;
  display: -ms-flexbox;
  display: flex;
  flex-wrap: wrap;
  justify-content: center;
  align-items: center;
  padding: 15px;
  /*background: #e6e6e6;*/
  
}

.wrap-contact100 {
  width: 550px;
  background: transparent;
  padding: 30px 0 80px 0;
}


/*==================================================================
[ Form ]*/

.contact100-form {
  width: 100%;
}

.contact100-form-title {
  display: block;
  font-family: Oswald-Medium;
  font-size: 30px;
  color: #43383e;
  line-height: 1.2;
  text-align: left;
  padding-bottom: 35px;
}



/*------------------------------------------------------------------
[ Input ]*/

.wrap-input100 {
  width: 100%;
  position: relative;
  background-color: #fff;
  margin-bottom: 17px;
}

.label-input100 {
  display: -webkit-box;
  display: -webkit-flex;
  display: -moz-box;
  display: -ms-flexbox;
  display: flex;
  justify-content: center;
  align-items: center;
  width: 58px;
  height: 62px;
  position: absolute;
  top: 0;
  left: 0;
  cursor: pointer;
  font-size: 18px;
  color: #999999;
}

.input100 {
  display: block;
  width: 100%;
  background: transparent;
  font-family: Oswald-Medium;
  font-size: 15px;
  color: #43383e;
  line-height: 1.2;
  padding: 0 5px;
}


/*---------------------------------------------*/
input.input100 {
  height: 62px;
  padding: 0 20px 0 58px;
}


textarea.input100 {
  min-height: 199px;
  padding: 19px 20px 0 23px;
}


/*==================================================================
[ Restyle Checkbox ]*/

.contact100-form-checkbox {
  padding-top: 12px;
  padding-bottom: 20px;
}

.input-checkbox100 {
  display: none;
}

.label-checkbox100 {
  display: block;
  position: relative;
  padding-left: 32px;
  cursor: pointer;
  font-family: Oswald-Regular;
  font-size: 15px;
  color: #43383e;
  line-height: 1.2;
}

.label-checkbox100::before {
  content: "\f00c";
  font-family: FontAwesome;
  font-size: 15px;
  color: transparent;
  display: -webkit-box;
  display: -webkit-flex;
  display: -moz-box;
  display: -ms-flexbox;
  display: flex;
  justify-content: center;
  align-items: center;
  position: absolute;
  width: 22px;
  height: 22px;
  border-radius: 2px;
  background: #fff;
  left: 0;
  top: 50%;
  -webkit-transform: translateY(-50%);
  -moz-transform: translateY(-50%);
  -ms-transform: translateY(-50%);
  -o-transform: translateY(-50%);
  transform: translateY(-50%);
}

.input-checkbox100:checked + .label-checkbox100::before {
  color: #555555;
}


/*------------------------------------------------------------------
[ Button ]*/
.container-contact100-form-btn {
  display: -webkit-box;
  display: -webkit-flex;
  display: -moz-box;
  display: -ms-flexbox;
  display: flex;
  flex-wrap: wrap;
  padding-top: 13px;
}

.wrap-contact100-form-btn {
  display: block;
  position: relative;
  z-index: 1;
  border-radius: 31px;
  overflow: hidden;
}

.contact100-form-bgbtn {
  position: absolute;
  z-index: -1;
  width: 300%;
  height: 100%;
  background: #df2351;
  background: -webkit-linear-gradient(-135deg, #d5007d, #e53935, #d5007d, #e53935);
  background: -o-linear-gradient(-135deg, #d5007d, #e53935, #d5007d, #e53935);
  background: -moz-linear-gradient(-135deg, #d5007d, #e53935, #d5007d, #e53935);
  background: linear-gradient(-135deg, #d5007d, #e53935, #d5007d, #e53935);
  top: 0;
  left: -100%;

  -webkit-transition: all 0.4s;
  -o-transition: all 0.4s;
  -moz-transition: all 0.4s;
  transition: all 0.4s;
}

.contact100-form-btn {
  display: -webkit-box;
  display: -webkit-flex;
  display: -moz-box;
  display: -ms-flexbox;
  display: flex;
  justify-content: center;
  align-items: center;
  padding: 0 20px;
  min-width: 160px;
  height: 62px;

  font-family: Oswald-Medium;
  font-size: 16px;
  color: #fff;
  line-height: 1.2;
}

.wrap-contact100-form-btn:hover .contact100-form-bgbtn {
  left: 0;
}

/*------------------------------------------------------------------
[ Responsive ]*/



/*------------------------------------------------------------------
[ Alert validate ]*/

.validate-input {
  position: relative;
}

.alert-validate::before {
  content: attr(data-validate);
  position: absolute;
  max-width: 70%;
  background-color: #fff;
  border: 1px solid #c80000;
  border-radius: 2px;
  padding: 4px 25px 4px 10px;
  top: 50%;
  -webkit-transform: translateY(-50%);
  -moz-transform: translateY(-50%);
  -ms-transform: translateY(-50%);
  -o-transform: translateY(-50%);
  transform: translateY(-50%);
  right: 2px;
  pointer-events: none;

  font-family: Oswald-Regular;
  color: #c80000;
  font-size: 13px;
  line-height: 1.4;
  text-align: left;

  visibility: hidden;
  opacity: 0;

  -webkit-transition: opacity 0.4s;
  -o-transition: opacity 0.4s;
  -moz-transition: opacity 0.4s;
  transition: opacity 0.4s;
}

.alert-validate::after {
  content: "\f06a";
  font-family: FontAwesome;
  display: block;
  position: absolute;
  color: #c80000;
  font-size: 16px;
  top: 50%;
  -webkit-transform: translateY(-50%);
  -moz-transform: translateY(-50%);
  -ms-transform: translateY(-50%);
  -o-transform: translateY(-50%);
  transform: translateY(-50%);
  right: 8px;
}

.alert-validate:hover:before {
  visibility: visible;
  opacity: 1;
}

@media (max-width: 992px) {
  .alert-validate::before {
    visibility: visible;
    opacity: 1;
  }
}



    </style>


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
     
