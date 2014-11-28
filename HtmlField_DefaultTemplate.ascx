<%@ Control Language="C#" %>
<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>
<%@ Register Assembly="Telerik.Sitefinity" Namespace="Telerik.Sitefinity.Web.UI" TagPrefix="sf" %>
<%@ Register Assembly="Telerik.Sitefinity" Namespace="Telerik.Sitefinity.Web.UI.Extenders" TagPrefix="sf" %>
    
<sf:ConditionalTemplateContainer ID="conditionalTemplate" runat="server">
    <Templates>
        <sf:ConditionalTemplate ID="ConditionalTemplate1" Left="DisplayMode" Operator="Equal" Right="Read" runat="server">
            <sf:SitefinityLabel id="titleLabel_read" runat="server" WrapperTagName="div" HideIfNoText="false" CssClass="sfTxtLbl" />
            <sf:SitefinityLabel id="viewControl" runat="server" WrapperTagName="div" HideIfNoText="false" CssClass="sfRTFContent" />
        </sf:ConditionalTemplate>
        <sf:ConditionalTemplate ID="ConditionalTemplate2" Left="DisplayMode" Operator="Equal" Right="Write" runat="server">
            <sf:ResourceLinks id="resourcesLinks2" runat="server" UseEmbeddedThemes="true" Theme="Default">
                <sf:EmbeddedResourcePropertySetter Name="Telerik.Sitefinity.Resources.Themes.Default.Styles.EditorDialogs.css" Static="true" ControlID="editControl" ControlPropertyName="DialogsCssFile" />
                <sf:ResourceFile Name="Telerik.Sitefinity.Resources.Themes.Default.Styles.Window.css" Static="true" />
            </sf:ResourceLinks>
            <asp:Label ID="titleLabel_write" runat="server" CssClass="sfTxtLbl" AssociatedControlID="editControl" />
            <asp:LinkButton ID="expandLink" runat="server" OnClientClick="return false;" CssClass="sfOptionalExpander" />
            <asp:Panel ID="expandableTarget" runat="server" CssClass="sfEditorWrp sfClearfix">
                <telerik:RadEditor
                    ID="editControl"
                    runat="server"
                    Skin="Sitefinity"
                    Width="100%"
                    Height="550px"
                    EnableResize="False"
                    EditModes="Design,HTML"
                    DialogHandlerUrl="~/Telerik.Web.UI.DialogHandler.axd"
                    Content=""
                    StripFormattingOptions="Css,Font,Span" >
                    <FlashManager ViewPaths="~/Files" UploadPaths="~/Files" DeletePaths="~/Files" />
                </telerik:RadEditor>
 
                <sf:RadEditorCustomDialogsExtender runat="server" id="editorCustomDialogsExtender" TargetControlID="editControl"/>
                <sf:SitefinityLabel id="descriptionLabel" runat="server" WrapperTagName="div" HideIfNoText="true" CssClass="sfDescription" />
                <sf:SitefinityLabel id="exampleLabel" runat="server" WrapperTagName="div" HideIfNoText="true" CssClass="sfExample" />
            </asp:Panel>
        </sf:ConditionalTemplate>
    </Templates>     
</sf:ConditionalTemplateContainer>

