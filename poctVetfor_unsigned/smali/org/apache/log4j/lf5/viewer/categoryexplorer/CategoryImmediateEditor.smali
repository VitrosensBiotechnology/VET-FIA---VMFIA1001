.class public Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryImmediateEditor;
.super Ljavax/swing/tree/DefaultTreeCellEditor;
.source "CategoryImmediateEditor.java"


# instance fields
.field protected editingIcon:Ljavax/swing/Icon;

.field private renderer:Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeRenderer;


# direct methods
.method public constructor <init>(Ljavax/swing/JTree;Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeRenderer;Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeEditor;)V
    .locals 1
    .param p1, "tree"    # Ljavax/swing/JTree;
    .param p2, "renderer"    # Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeRenderer;
    .param p3, "editor"    # Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeEditor;

    .line 59
    invoke-direct {p0, p1, p2, p3}, Ljavax/swing/tree/DefaultTreeCellEditor;-><init>(Ljavax/swing/JTree;Ljavax/swing/tree/DefaultTreeCellRenderer;Ljavax/swing/tree/TreeCellEditor;)V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryImmediateEditor;->editingIcon:Ljavax/swing/Icon;

    .line 60
    iput-object p2, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryImmediateEditor;->renderer:Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeRenderer;

    .line 61
    invoke-virtual {p2, v0}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeRenderer;->setIcon(Ljavax/swing/Icon;)V

    .line 62
    invoke-virtual {p2, v0}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeRenderer;->setLeafIcon(Ljavax/swing/Icon;)V

    .line 63
    invoke-virtual {p2, v0}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeRenderer;->setOpenIcon(Ljavax/swing/Icon;)V

    .line 64
    invoke-virtual {p2, v0}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeRenderer;->setClosedIcon(Ljavax/swing/Icon;)V

    .line 66
    iput-object v0, p0, Ljavax/swing/tree/DefaultTreeCellEditor;->editingIcon:Ljavax/swing/Icon;

    .line 67
    return-void
.end method


# virtual methods
.method protected canEditImmediately(Ljava/util/EventObject;)Z
    .locals 2
    .param p1, "e"    # Ljava/util/EventObject;

    .line 117
    const/4 v0, 0x0

    .line 119
    .local v0, "rv":Z
    instance-of v1, p1, Ljava/awt/event/MouseEvent;

    if-eqz v1, :cond_0

    .line 120
    move-object v1, p1

    check-cast v1, Ljava/awt/event/MouseEvent;

    .line 121
    .local v1, "me":Ljava/awt/event/MouseEvent;
    invoke-virtual {p0, v1}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryImmediateEditor;->inCheckBoxHitRegion(Ljava/awt/event/MouseEvent;)Z

    move-result v0

    .line 124
    .end local v1    # "me":Ljava/awt/event/MouseEvent;
    :cond_0
    return v0
.end method

.method protected determineOffset(Ljavax/swing/JTree;Ljava/lang/Object;ZZZI)V
    .locals 1
    .param p1, "tree"    # Ljavax/swing/JTree;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "isSelected"    # Z
    .param p4, "expanded"    # Z
    .param p5, "leaf"    # Z
    .param p6, "row"    # I

    .line 131
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryImmediateEditor;->offset:I

    .line 132
    return-void
.end method

.method public inCheckBoxHitRegion(Ljava/awt/event/MouseEvent;)Z
    .locals 7
    .param p1, "e"    # Ljava/awt/event/MouseEvent;

    .line 88
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryImmediateEditor;->tree:Ljavax/swing/JTree;

    invoke-virtual {p1}, Ljava/awt/event/MouseEvent;->getX()I

    move-result v1

    invoke-virtual {p1}, Ljava/awt/event/MouseEvent;->getY()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljavax/swing/JTree;->getPathForLocation(II)Ljavax/swing/tree/TreePath;

    move-result-object v0

    .line 90
    .local v0, "path":Ljavax/swing/tree/TreePath;
    if-nez v0, :cond_0

    .line 91
    const/4 v1, 0x0

    return v1

    .line 93
    :cond_0
    invoke-virtual {v0}, Ljavax/swing/tree/TreePath;->getLastPathComponent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;

    .line 94
    .local v1, "node":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    const/4 v2, 0x0

    .line 100
    .local v2, "rv":Z
    iget-object v3, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryImmediateEditor;->tree:Ljavax/swing/JTree;

    iget v4, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryImmediateEditor;->lastRow:I

    invoke-virtual {v3, v4}, Ljavax/swing/JTree;->getRowBounds(I)Ljava/awt/Rectangle;

    move-result-object v3

    .line 101
    .local v3, "bounds":Ljava/awt/Rectangle;
    iget-object v4, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryImmediateEditor;->renderer:Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeRenderer;

    invoke-virtual {v4}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeRenderer;->getCheckBoxOffset()Ljava/awt/Dimension;

    move-result-object v4

    .line 104
    .local v4, "checkBoxOffset":Ljava/awt/Dimension;
    iget v5, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryImmediateEditor;->offset:I

    iget v6, v4, Ljava/awt/Dimension;->width:I

    add-int/2addr v5, v6

    iget v6, v4, Ljava/awt/Dimension;->height:I

    invoke-virtual {v3, v5, v6}, Ljava/awt/Rectangle;->translate(II)V

    .line 107
    invoke-virtual {p1}, Ljava/awt/event/MouseEvent;->getPoint()Ljava/awt/Point;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/awt/Rectangle;->contains(Ljava/awt/Point;)Z

    move-result v2

    .line 109
    .end local v3    # "bounds":Ljava/awt/Rectangle;
    .end local v4    # "checkBoxOffset":Ljava/awt/Dimension;
    const/4 v3, 0x1

    return v3
.end method

.method public shouldSelectCell(Ljava/util/EventObject;)Z
    .locals 5
    .param p1, "e"    # Ljava/util/EventObject;

    .line 73
    const/4 v0, 0x0

    .line 75
    .local v0, "rv":Z
    instance-of v1, p1, Ljava/awt/event/MouseEvent;

    if-eqz v1, :cond_0

    .line 76
    move-object v1, p1

    check-cast v1, Ljava/awt/event/MouseEvent;

    .line 77
    .local v1, "me":Ljava/awt/event/MouseEvent;
    iget-object v2, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryImmediateEditor;->tree:Ljavax/swing/JTree;

    invoke-virtual {v1}, Ljava/awt/event/MouseEvent;->getX()I

    move-result v3

    invoke-virtual {v1}, Ljava/awt/event/MouseEvent;->getY()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljavax/swing/JTree;->getPathForLocation(II)Ljavax/swing/tree/TreePath;

    move-result-object v2

    .line 79
    .local v2, "path":Ljavax/swing/tree/TreePath;
    invoke-virtual {v2}, Ljavax/swing/tree/TreePath;->getLastPathComponent()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;

    .line 82
    .local v3, "node":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    invoke-virtual {v3}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->isLeaf()Z

    move-result v0

    .line 84
    .end local v1    # "me":Ljava/awt/event/MouseEvent;
    .end local v2    # "path":Ljavax/swing/tree/TreePath;
    .end local v3    # "node":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    :cond_0
    return v0
.end method
