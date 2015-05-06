$(function () {
    var option = {
        async: {
            enable: true,
            dataFilter: GetOrgsCallback,
            autoParam: ["id=parentOrgCode"],
            type: "get",
            dataType: "json",
            contentType: "application/json;",
            url: "/Org/GetOrgInfos"
        },
        callback: {
            onClick: treeNodeClick,
            onNodeCreated: treeNodeCreated
        }
    };
    $.fn.zTree.init($("#orgTree"), option);
});
function treeNodeClick(event, treeId, treeNode) {
    $("#ifrOrgUsers").attr("src", $(treeNode).attr("targetUrl"));
};
function treeNodeCreated(event, treeId, treeNode) {
    var treeObj = $.fn.zTree.getZTreeObj("orgTree");
    if (!treeNode.getParentNode()) {
        treeObj.expandNode(treeNode, true, true, true);
    }
};
function GetOrgsCallback(treeId, parentNode, result) {
    if (!result) return null;
    var childNodes = [];
    for (var i = 0, count = result.length; i < count; i++) {
        var data = result[i];
        var url = '/User/OrgUsers?orgCode='+ data.Code+'&tableId='+ Request.queryString('tableId');
        childNodes[i] = {
            name: data.Name,
            isParent: data.HasChild,
            id: data.Code,
            icon: "/Content/Images/org_icon.gif",
            targetUrl: url
        };
    }
    return childNodes;
};