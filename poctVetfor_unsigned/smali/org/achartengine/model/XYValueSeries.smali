.class public Lorg/achartengine/model/XYValueSeries;
.super Lorg/achartengine/model/XYSeries;
.source "XYValueSeries.java"


# instance fields
.field private mMaxValue:D

.field private mMinValue:D

.field private mValue:Ljava/util/List;
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
    .locals 2
    .param p1, "title"    # Ljava/lang/String;

    .line 41
    invoke-direct {p0, p1}, Lorg/achartengine/model/XYSeries;-><init>(Ljava/lang/String;)V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/achartengine/model/XYValueSeries;->mValue:Ljava/util/List;

    .line 31
    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    iput-wide v0, p0, Lorg/achartengine/model/XYValueSeries;->mMinValue:D

    .line 33
    const-wide v0, -0x10000000000001L

    iput-wide v0, p0, Lorg/achartengine/model/XYValueSeries;->mMaxValue:D

    .line 42
    return-void
.end method

.method private initRange()V
    .locals 4

    .line 61
    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    iput-wide v0, p0, Lorg/achartengine/model/XYValueSeries;->mMinValue:D

    .line 62
    iput-wide v0, p0, Lorg/achartengine/model/XYValueSeries;->mMaxValue:D

    .line 63
    invoke-virtual {p0}, Lorg/achartengine/model/XYValueSeries;->getItemCount()I

    move-result v0

    .line 64
    .local v0, "length":I
    const/4 v1, 0x0

    .line 64
    .local v1, "k":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 65
    invoke-virtual {p0, v1}, Lorg/achartengine/model/XYValueSeries;->getValue(I)D

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lorg/achartengine/model/XYValueSeries;->updateRange(D)V

    .line 64
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 67
    .end local v1    # "k":I
    :cond_0
    return-void
.end method

.method private updateRange(D)V
    .locals 2
    .param p1, "value"    # D

    .line 75
    iget-wide v0, p0, Lorg/achartengine/model/XYValueSeries;->mMinValue:D

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/achartengine/model/XYValueSeries;->mMinValue:D

    .line 76
    iget-wide v0, p0, Lorg/achartengine/model/XYValueSeries;->mMaxValue:D

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/achartengine/model/XYValueSeries;->mMaxValue:D

    .line 77
    return-void
.end method


# virtual methods
.method public declared-synchronized add(DD)V
    .locals 7
    .param p1, "x"    # D
    .param p3, "y"    # D

    monitor-enter p0

    .line 86
    const-wide/16 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    :try_start_0
    invoke-virtual/range {v0 .. v6}, Lorg/achartengine/model/XYValueSeries;->add(DDD)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    monitor-exit p0

    return-void

    .line 85
    .end local p1    # "x":D
    .end local p3    # "y":D
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized add(DDD)V
    .locals 2
    .param p1, "x"    # D
    .param p3, "y"    # D
    .param p5, "value"    # D

    monitor-enter p0

    .line 52
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Lorg/achartengine/model/XYSeries;->add(DD)V

    .line 53
    iget-object v0, p0, Lorg/achartengine/model/XYValueSeries;->mValue:Ljava/util/List;

    invoke-static {p5, p6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    invoke-direct {p0, p5, p6}, Lorg/achartengine/model/XYValueSeries;->updateRange(D)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    monitor-exit p0

    return-void

    .line 51
    .end local p1    # "x":D
    .end local p3    # "y":D
    .end local p5    # "value":D
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized clear()V
    .locals 1

    monitor-enter p0

    .line 106
    :try_start_0
    invoke-super {p0}, Lorg/achartengine/model/XYSeries;->clear()V

    .line 107
    iget-object v0, p0, Lorg/achartengine/model/XYValueSeries;->mValue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 108
    invoke-direct {p0}, Lorg/achartengine/model/XYValueSeries;->initRange()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    monitor-exit p0

    return-void

    .line 105
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getMaxValue()D
    .locals 2

    .line 136
    iget-wide v0, p0, Lorg/achartengine/model/XYValueSeries;->mMaxValue:D

    return-wide v0
.end method

.method public getMinValue()D
    .locals 2

    .line 127
    iget-wide v0, p0, Lorg/achartengine/model/XYValueSeries;->mMinValue:D

    return-wide v0
.end method

.method public declared-synchronized getValue(I)D
    .locals 2
    .param p1, "index"    # I

    monitor-enter p0

    .line 118
    :try_start_0
    iget-object v0, p0, Lorg/achartengine/model/XYValueSeries;->mValue:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 118
    .end local p1    # "index":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized remove(I)V
    .locals 5
    .param p1, "index"    # I

    monitor-enter p0

    .line 95
    :try_start_0
    invoke-super {p0, p1}, Lorg/achartengine/model/XYSeries;->remove(I)V

    .line 96
    iget-object v0, p0, Lorg/achartengine/model/XYValueSeries;->mValue:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 97
    .local v0, "removedValue":D
    iget-wide v2, p0, Lorg/achartengine/model/XYValueSeries;->mMinValue:D

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_0

    iget-wide v2, p0, Lorg/achartengine/model/XYValueSeries;->mMaxValue:D

    cmpl-double v4, v0, v2

    if-nez v4, :cond_1

    .line 98
    :cond_0
    invoke-direct {p0}, Lorg/achartengine/model/XYValueSeries;->initRange()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    :cond_1
    monitor-exit p0

    return-void

    .line 94
    .end local v0    # "removedValue":D
    .end local p1    # "index":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
