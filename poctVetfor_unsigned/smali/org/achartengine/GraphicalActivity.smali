.class public Lorg/achartengine/GraphicalActivity;
.super Landroid/app/Activity;
.source "GraphicalActivity.java"


# instance fields
.field private mChart:Lorg/achartengine/chart/AbstractChart;

.field private mView:Lorg/achartengine/GraphicalView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 35
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    invoke-virtual {p0}, Lorg/achartengine/GraphicalActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 37
    .local v0, "extras":Landroid/os/Bundle;
    const-string v1, "chart"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lorg/achartengine/chart/AbstractChart;

    iput-object v1, p0, Lorg/achartengine/GraphicalActivity;->mChart:Lorg/achartengine/chart/AbstractChart;

    .line 38
    new-instance v1, Lorg/achartengine/GraphicalView;

    iget-object v2, p0, Lorg/achartengine/GraphicalActivity;->mChart:Lorg/achartengine/chart/AbstractChart;

    invoke-direct {v1, p0, v2}, Lorg/achartengine/GraphicalView;-><init>(Landroid/content/Context;Lorg/achartengine/chart/AbstractChart;)V

    iput-object v1, p0, Lorg/achartengine/GraphicalActivity;->mView:Lorg/achartengine/GraphicalView;

    .line 39
    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 40
    .local v1, "title":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 41
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lorg/achartengine/GraphicalActivity;->requestWindowFeature(I)Z

    goto :goto_0

    .line 42
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 43
    invoke-virtual {p0, v1}, Lorg/achartengine/GraphicalActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 45
    :cond_1
    :goto_0
    iget-object v2, p0, Lorg/achartengine/GraphicalActivity;->mView:Lorg/achartengine/GraphicalView;

    invoke-virtual {p0, v2}, Lorg/achartengine/GraphicalActivity;->setContentView(Landroid/view/View;)V

    .line 46
    return-void
.end method
