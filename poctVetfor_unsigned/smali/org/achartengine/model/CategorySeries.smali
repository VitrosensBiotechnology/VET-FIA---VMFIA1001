.class public Lorg/achartengine/model/CategorySeries;
.super Ljava/lang/Object;
.source "CategorySeries.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private mCategories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTitle:Ljava/lang/String;

.field private mValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/achartengine/model/CategorySeries;->mCategories:Ljava/util/List;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/achartengine/model/CategorySeries;->mValues:Ljava/util/List;

    .line 39
    iput-object p1, p0, Lorg/achartengine/model/CategorySeries;->mTitle:Ljava/lang/String;

    .line 40
    return-void
.end method


# virtual methods
.method public declared-synchronized add(D)V
    .locals 2
    .param p1, "value"    # D

    monitor-enter p0

    .line 57
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/achartengine/model/CategorySeries;->mCategories:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lorg/achartengine/model/CategorySeries;->add(Ljava/lang/String;D)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    monitor-exit p0

    return-void

    .line 56
    .end local p1    # "value":D
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized add(Ljava/lang/String;D)V
    .locals 2
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "value"    # D

    monitor-enter p0

    .line 67
    :try_start_0
    iget-object v0, p0, Lorg/achartengine/model/CategorySeries;->mCategories:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    iget-object v0, p0, Lorg/achartengine/model/CategorySeries;->mValues:Ljava/util/List;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    monitor-exit p0

    return-void

    .line 66
    .end local p1    # "category":Ljava/lang/String;
    .end local p2    # "value":D
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized clear()V
    .locals 1

    monitor-enter p0

    .line 97
    :try_start_0
    iget-object v0, p0, Lorg/achartengine/model/CategorySeries;->mCategories:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 98
    iget-object v0, p0, Lorg/achartengine/model/CategorySeries;->mValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    monitor-exit p0

    return-void

    .line 96
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getCategory(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    monitor-enter p0

    .line 118
    :try_start_0
    iget-object v0, p0, Lorg/achartengine/model/CategorySeries;->mCategories:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 118
    .end local p1    # "index":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getItemCount()I
    .locals 1

    monitor-enter p0

    .line 127
    :try_start_0
    iget-object v0, p0, Lorg/achartengine/model/CategorySeries;->mCategories:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lorg/achartengine/model/CategorySeries;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getValue(I)D
    .locals 2
    .param p1, "index"    # I

    monitor-enter p0

    .line 108
    :try_start_0
    iget-object v0, p0, Lorg/achartengine/model/CategorySeries;->mValues:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 108
    .end local p1    # "index":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized remove(I)V
    .locals 1
    .param p1, "index"    # I

    monitor-enter p0

    .line 89
    :try_start_0
    iget-object v0, p0, Lorg/achartengine/model/CategorySeries;->mCategories:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 90
    iget-object v0, p0, Lorg/achartengine/model/CategorySeries;->mValues:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    monitor-exit p0

    return-void

    .line 88
    .end local p1    # "index":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized set(ILjava/lang/String;D)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "category"    # Ljava/lang/String;
    .param p3, "value"    # D

    monitor-enter p0

    .line 79
    :try_start_0
    iget-object v0, p0, Lorg/achartengine/model/CategorySeries;->mCategories:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 80
    iget-object v0, p0, Lorg/achartengine/model/CategorySeries;->mValues:Ljava/util/List;

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    monitor-exit p0

    return-void

    .line 78
    .end local p1    # "index":I
    .end local p2    # "category":Ljava/lang/String;
    .end local p3    # "value":D
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public toXYSeries()Lorg/achartengine/model/XYSeries;
    .locals 7

    .line 136
    new-instance v0, Lorg/achartengine/model/XYSeries;

    iget-object v1, p0, Lorg/achartengine/model/CategorySeries;->mTitle:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/achartengine/model/XYSeries;-><init>(Ljava/lang/String;)V

    .line 137
    .local v0, "xySeries":Lorg/achartengine/model/XYSeries;
    const/4 v1, 0x0

    .line 138
    .local v1, "k":I
    iget-object v2, p0, Lorg/achartengine/model/CategorySeries;->mValues:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 138
    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    .line 139
    .local v3, "value":D
    add-int/lit8 v1, v1, 0x1

    int-to-double v5, v1

    invoke-virtual {v0, v5, v6, v3, v4}, Lorg/achartengine/model/XYSeries;->add(DD)V

    .line 139
    .end local v3    # "value":D
    goto :goto_0

    .line 141
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_0
    return-object v0
.end method
