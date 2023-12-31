.class Lorg/apache/log4j/chainsaw/MyTableModel;
.super Ljavax/swing/table/AbstractTableModel;
.source "MyTableModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/log4j/chainsaw/MyTableModel$Processor;
    }
.end annotation


# static fields
.field private static final COL_NAMES:[Ljava/lang/String;

.field private static final DATE_FORMATTER:Ljava/text/DateFormat;

.field private static final EMPTY_LIST:[Lorg/apache/log4j/chainsaw/EventDetails;

.field private static final LOG:Lorg/apache/log4j/Logger;

.field private static final MY_COMP:Ljava/util/Comparator;

.field static synthetic class$java$lang$Boolean:Ljava/lang/Class;

.field static synthetic class$java$lang$Object:Ljava/lang/Class;

.field static synthetic class$org$apache$log4j$chainsaw$MyTableModel:Ljava/lang/Class;


# instance fields
.field private final mAllEvents:Ljava/util/SortedSet;

.field private mCategoryFilter:Ljava/lang/String;

.field private mFilteredEvents:[Lorg/apache/log4j/chainsaw/EventDetails;

.field private final mLock:Ljava/lang/Object;

.field private mMessageFilter:Ljava/lang/String;

.field private mNDCFilter:Ljava/lang/String;

.field private mPaused:Z

.field private final mPendingEvents:Ljava/util/List;

.field private mPriorityFilter:Lorg/apache/log4j/Priority;

.field private mThreadFilter:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 42
    sget-object v0, Lorg/apache/log4j/chainsaw/MyTableModel;->class$org$apache$log4j$chainsaw$MyTableModel:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.log4j.chainsaw.MyTableModel"

    invoke-static {v0}, Lorg/apache/log4j/chainsaw/MyTableModel;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/chainsaw/MyTableModel;->class$org$apache$log4j$chainsaw$MyTableModel:Ljava/lang/Class;

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/apache/log4j/chainsaw/MyTableModel;->class$org$apache$log4j$chainsaw$MyTableModel:Ljava/lang/Class;

    :goto_0
    invoke-static {v0}, Lorg/apache/log4j/Logger;->getLogger(Ljava/lang/Class;)Lorg/apache/log4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/chainsaw/MyTableModel;->LOG:Lorg/apache/log4j/Logger;

    .line 45
    new-instance v0, Lorg/apache/log4j/chainsaw/MyTableModel$1;

    invoke-direct {v0}, Lorg/apache/log4j/chainsaw/MyTableModel$1;-><init>()V

    sput-object v0, Lorg/apache/log4j/chainsaw/MyTableModel;->MY_COMP:Ljava/util/Comparator;

    .line 112
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Time"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v3, "Priority"

    aput-object v3, v0, v1

    const-string v1, "Trace"

    const/4 v3, 0x2

    aput-object v1, v0, v3

    const-string v1, "Category"

    const/4 v4, 0x3

    aput-object v1, v0, v4

    const/4 v1, 0x4

    const-string v5, "NDC"

    aput-object v5, v0, v1

    const/4 v1, 0x5

    const-string v5, "Message"

    aput-object v5, v0, v1

    sput-object v0, Lorg/apache/log4j/chainsaw/MyTableModel;->COL_NAMES:[Ljava/lang/String;

    .line 116
    new-array v0, v2, [Lorg/apache/log4j/chainsaw/EventDetails;

    sput-object v0, Lorg/apache/log4j/chainsaw/MyTableModel;->EMPTY_LIST:[Lorg/apache/log4j/chainsaw/EventDetails;

    .line 119
    invoke-static {v4, v3}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/chainsaw/MyTableModel;->DATE_FORMATTER:Ljava/text/DateFormat;

    return-void
.end method

.method constructor <init>()V
    .locals 3

    .line 149
    invoke-direct {p0}, Ljavax/swing/table/AbstractTableModel;-><init>()V

    .line 123
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/log4j/chainsaw/MyTableModel;->mLock:Ljava/lang/Object;

    .line 125
    new-instance v0, Ljava/util/TreeSet;

    sget-object v1, Lorg/apache/log4j/chainsaw/MyTableModel;->MY_COMP:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lorg/apache/log4j/chainsaw/MyTableModel;->mAllEvents:Ljava/util/SortedSet;

    .line 127
    sget-object v0, Lorg/apache/log4j/chainsaw/MyTableModel;->EMPTY_LIST:[Lorg/apache/log4j/chainsaw/EventDetails;

    iput-object v0, p0, Lorg/apache/log4j/chainsaw/MyTableModel;->mFilteredEvents:[Lorg/apache/log4j/chainsaw/EventDetails;

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/log4j/chainsaw/MyTableModel;->mPendingEvents:Ljava/util/List;

    .line 131
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/log4j/chainsaw/MyTableModel;->mPaused:Z

    .line 134
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/log4j/chainsaw/MyTableModel;->mThreadFilter:Ljava/lang/String;

    .line 136
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/log4j/chainsaw/MyTableModel;->mMessageFilter:Ljava/lang/String;

    .line 138
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/log4j/chainsaw/MyTableModel;->mNDCFilter:Ljava/lang/String;

    .line 140
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/log4j/chainsaw/MyTableModel;->mCategoryFilter:Ljava/lang/String;

    .line 142
    sget-object v0, Lorg/apache/log4j/Priority;->DEBUG:Lorg/apache/log4j/Priority;

    iput-object v0, p0, Lorg/apache/log4j/chainsaw/MyTableModel;->mPriorityFilter:Lorg/apache/log4j/Priority;

    .line 150
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/apache/log4j/chainsaw/MyTableModel$Processor;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/apache/log4j/chainsaw/MyTableModel$Processor;-><init>(Lorg/apache/log4j/chainsaw/MyTableModel;Lorg/apache/log4j/chainsaw/MyTableModel$1;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 151
    .local v0, "t":Ljava/lang/Thread;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 152
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 153
    return-void
.end method

.method static synthetic access$000(Lorg/apache/log4j/chainsaw/MyTableModel;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/apache/log4j/chainsaw/MyTableModel;

    .line 37
    iget-object v0, p0, Lorg/apache/log4j/chainsaw/MyTableModel;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lorg/apache/log4j/chainsaw/MyTableModel;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/log4j/chainsaw/MyTableModel;

    .line 37
    iget-boolean v0, p0, Lorg/apache/log4j/chainsaw/MyTableModel;->mPaused:Z

    return v0
.end method

.method static synthetic access$200(Lorg/apache/log4j/chainsaw/MyTableModel;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lorg/apache/log4j/chainsaw/MyTableModel;

    .line 37
    iget-object v0, p0, Lorg/apache/log4j/chainsaw/MyTableModel;->mPendingEvents:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lorg/apache/log4j/chainsaw/MyTableModel;)Ljava/util/SortedSet;
    .locals 1
    .param p0, "x0"    # Lorg/apache/log4j/chainsaw/MyTableModel;

    .line 37
    iget-object v0, p0, Lorg/apache/log4j/chainsaw/MyTableModel;->mAllEvents:Ljava/util/SortedSet;

    return-object v0
.end method

.method static synthetic access$400(Lorg/apache/log4j/chainsaw/MyTableModel;Lorg/apache/log4j/chainsaw/EventDetails;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/log4j/chainsaw/MyTableModel;
    .param p1, "x1"    # Lorg/apache/log4j/chainsaw/EventDetails;

    .line 37
    invoke-direct {p0, p1}, Lorg/apache/log4j/chainsaw/MyTableModel;->matchFilter(Lorg/apache/log4j/chainsaw/EventDetails;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lorg/apache/log4j/chainsaw/MyTableModel;Z)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/log4j/chainsaw/MyTableModel;
    .param p1, "x1"    # Z

    .line 37
    invoke-direct {p0, p1}, Lorg/apache/log4j/chainsaw/MyTableModel;->updateFilteredEvents(Z)V

    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "x0"    # Ljava/lang/String;

    .line 42
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 42
    .local v0, "x1":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v1}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    throw v1
.end method

.method private matchFilter(Lorg/apache/log4j/chainsaw/EventDetails;)Z
    .locals 4
    .param p1, "aEvent"    # Lorg/apache/log4j/chainsaw/EventDetails;

    .line 372
    invoke-virtual {p1}, Lorg/apache/log4j/chainsaw/EventDetails;->getPriority()Lorg/apache/log4j/Priority;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/log4j/chainsaw/MyTableModel;->mPriorityFilter:Lorg/apache/log4j/Priority;

    invoke-virtual {v0, v1}, Lorg/apache/log4j/Priority;->isGreaterOrEqual(Lorg/apache/log4j/Priority;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lorg/apache/log4j/chainsaw/EventDetails;->getThreadName()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/log4j/chainsaw/MyTableModel;->mThreadFilter:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_4

    invoke-virtual {p1}, Lorg/apache/log4j/chainsaw/EventDetails;->getCategoryName()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/log4j/chainsaw/MyTableModel;->mCategoryFilter:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_4

    iget-object v0, p0, Lorg/apache/log4j/chainsaw/MyTableModel;->mNDCFilter:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/apache/log4j/chainsaw/EventDetails;->getNDC()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lorg/apache/log4j/chainsaw/EventDetails;->getNDC()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/log4j/chainsaw/MyTableModel;->mNDCFilter:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_4

    .line 379
    :cond_0
    invoke-virtual {p1}, Lorg/apache/log4j/chainsaw/EventDetails;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 380
    .local v0, "rm":Ljava/lang/String;
    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 382
    iget-object v3, p0, Lorg/apache/log4j/chainsaw/MyTableModel;->mMessageFilter:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    move v1, v2

    nop

    :cond_1
    return v1

    .line 384
    :cond_2
    iget-object v3, p0, Lorg/apache/log4j/chainsaw/MyTableModel;->mMessageFilter:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_3

    move v1, v2

    nop

    :cond_3
    return v1

    .line 388
    .end local v0    # "rm":Ljava/lang/String;
    :cond_4
    return v1
.end method

.method private updateFilteredEvents(Z)V
    .locals 12
    .param p1, "aInsertedToFront"    # Z

    .line 331
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 332
    .local v0, "start":J
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 333
    .local v2, "filtered":Ljava/util/List;
    iget-object v3, p0, Lorg/apache/log4j/chainsaw/MyTableModel;->mAllEvents:Ljava/util/SortedSet;

    invoke-interface {v3}, Ljava/util/SortedSet;->size()I

    move-result v3

    .line 334
    .local v3, "size":I
    iget-object v4, p0, Lorg/apache/log4j/chainsaw/MyTableModel;->mAllEvents:Ljava/util/SortedSet;

    invoke-interface {v4}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 336
    .local v4, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 337
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/log4j/chainsaw/EventDetails;

    .line 338
    .local v5, "event":Lorg/apache/log4j/chainsaw/EventDetails;
    invoke-direct {p0, v5}, Lorg/apache/log4j/chainsaw/MyTableModel;->matchFilter(Lorg/apache/log4j/chainsaw/EventDetails;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 339
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 341
    .end local v5    # "event":Lorg/apache/log4j/chainsaw/EventDetails;
    :cond_0
    goto :goto_0

    .line 343
    :cond_1
    iget-object v5, p0, Lorg/apache/log4j/chainsaw/MyTableModel;->mFilteredEvents:[Lorg/apache/log4j/chainsaw/EventDetails;

    const/4 v6, 0x0

    array-length v5, v5

    if-nez v5, :cond_2

    const/4 v5, 0x0

    goto :goto_1

    :cond_2
    iget-object v5, p0, Lorg/apache/log4j/chainsaw/MyTableModel;->mFilteredEvents:[Lorg/apache/log4j/chainsaw/EventDetails;

    aget-object v5, v5, v6

    .line 346
    .local v5, "lastFirst":Lorg/apache/log4j/chainsaw/EventDetails;
    :goto_1
    sget-object v7, Lorg/apache/log4j/chainsaw/MyTableModel;->EMPTY_LIST:[Lorg/apache/log4j/chainsaw/EventDetails;

    invoke-interface {v2, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lorg/apache/log4j/chainsaw/EventDetails;

    iput-object v7, p0, Lorg/apache/log4j/chainsaw/MyTableModel;->mFilteredEvents:[Lorg/apache/log4j/chainsaw/EventDetails;

    .line 348
    if-eqz p1, :cond_4

    if-eqz v5, :cond_4

    .line 349
    invoke-interface {v2, v5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v7

    .line 350
    .local v7, "index":I
    const/4 v8, 0x1

    if-ge v7, v8, :cond_3

    .line 351
    sget-object v6, Lorg/apache/log4j/chainsaw/MyTableModel;->LOG:Lorg/apache/log4j/Logger;

    const-string v8, "In strange state"

    invoke-virtual {v6, v8}, Lorg/apache/log4j/Logger;->warn(Ljava/lang/Object;)V

    .line 352
    invoke-virtual {p0}, Lorg/apache/log4j/chainsaw/MyTableModel;->fireTableDataChanged()V

    goto :goto_2

    .line 354
    :cond_3
    add-int/lit8 v8, v7, -0x1

    invoke-virtual {p0, v6, v8}, Lorg/apache/log4j/chainsaw/MyTableModel;->fireTableRowsInserted(II)V

    .line 356
    .end local v7    # "index":I
    :goto_2
    goto :goto_3

    .line 357
    :cond_4
    invoke-virtual {p0}, Lorg/apache/log4j/chainsaw/MyTableModel;->fireTableDataChanged()V

    .line 360
    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 361
    .local v6, "end":J
    sget-object v8, Lorg/apache/log4j/chainsaw/MyTableModel;->LOG:Lorg/apache/log4j/Logger;

    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    const-string v10, "Total time [ms]: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sub-long v10, v6, v0

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string v10, " in update, size: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/apache/log4j/Logger;->debug(Ljava/lang/Object;)V

    .line 363
    return-void
.end method


# virtual methods
.method public addEvent(Lorg/apache/log4j/chainsaw/EventDetails;)V
    .locals 2
    .param p1, "aEvent"    # Lorg/apache/log4j/chainsaw/EventDetails;

    .line 277
    iget-object v0, p0, Lorg/apache/log4j/chainsaw/MyTableModel;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 278
    :try_start_0
    iget-object v1, p0, Lorg/apache/log4j/chainsaw/MyTableModel;->mPendingEvents:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    monitor-exit v0

    .line 280
    return-void

    .line 279
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public clear()V
    .locals 2

    .line 286
    iget-object v0, p0, Lorg/apache/log4j/chainsaw/MyTableModel;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 287
    :try_start_0
    iget-object v1, p0, Lorg/apache/log4j/chainsaw/MyTableModel;->mAllEvents:Ljava/util/SortedSet;

    invoke-interface {v1}, Ljava/util/SortedSet;->clear()V

    .line 288
    const/4 v1, 0x0

    new-array v1, v1, [Lorg/apache/log4j/chainsaw/EventDetails;

    iput-object v1, p0, Lorg/apache/log4j/chainsaw/MyTableModel;->mFilteredEvents:[Lorg/apache/log4j/chainsaw/EventDetails;

    .line 289
    iget-object v1, p0, Lorg/apache/log4j/chainsaw/MyTableModel;->mPendingEvents:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 290
    invoke-virtual {p0}, Lorg/apache/log4j/chainsaw/MyTableModel;->fireTableDataChanged()V

    .line 291
    monitor-exit v0

    .line 292
    return-void

    .line 291
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getColumnClass(I)Ljava/lang/Class;
    .locals 1
    .param p1, "aCol"    # I

    .line 182
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    sget-object v0, Lorg/apache/log4j/chainsaw/MyTableModel;->class$java$lang$Boolean:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "java.lang.Boolean"

    invoke-static {v0}, Lorg/apache/log4j/chainsaw/MyTableModel;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/chainsaw/MyTableModel;->class$java$lang$Boolean:Ljava/lang/Class;

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/apache/log4j/chainsaw/MyTableModel;->class$java$lang$Boolean:Ljava/lang/Class;

    goto :goto_0

    :cond_1
    sget-object v0, Lorg/apache/log4j/chainsaw/MyTableModel;->class$java$lang$Object:Ljava/lang/Class;

    if-nez v0, :cond_2

    const-string v0, "java.lang.Object"

    invoke-static {v0}, Lorg/apache/log4j/chainsaw/MyTableModel;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/chainsaw/MyTableModel;->class$java$lang$Object:Ljava/lang/Class;

    goto :goto_0

    :cond_2
    sget-object v0, Lorg/apache/log4j/chainsaw/MyTableModel;->class$java$lang$Object:Ljava/lang/Class;

    :goto_0
    return-object v0
.end method

.method public getColumnCount()I
    .locals 1

    .line 170
    sget-object v0, Lorg/apache/log4j/chainsaw/MyTableModel;->COL_NAMES:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getColumnName(I)Ljava/lang/String;
    .locals 1
    .param p1, "aCol"    # I

    .line 176
    sget-object v0, Lorg/apache/log4j/chainsaw/MyTableModel;->COL_NAMES:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getEventDetails(I)Lorg/apache/log4j/chainsaw/EventDetails;
    .locals 2
    .param p1, "aRow"    # I

    .line 315
    iget-object v0, p0, Lorg/apache/log4j/chainsaw/MyTableModel;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 316
    :try_start_0
    iget-object v1, p0, Lorg/apache/log4j/chainsaw/MyTableModel;->mFilteredEvents:[Lorg/apache/log4j/chainsaw/EventDetails;

    aget-object v1, v1, p1

    monitor-exit v0

    return-object v1

    .line 317
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getRowCount()I
    .locals 2

    .line 162
    iget-object v0, p0, Lorg/apache/log4j/chainsaw/MyTableModel;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 163
    :try_start_0
    iget-object v1, p0, Lorg/apache/log4j/chainsaw/MyTableModel;->mFilteredEvents:[Lorg/apache/log4j/chainsaw/EventDetails;

    array-length v1, v1

    monitor-exit v0

    return v1

    .line 164
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getValueAt(II)Ljava/lang/Object;
    .locals 6
    .param p1, "aRow"    # I
    .param p2, "aCol"    # I

    .line 187
    iget-object v0, p0, Lorg/apache/log4j/chainsaw/MyTableModel;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 188
    :try_start_0
    iget-object v1, p0, Lorg/apache/log4j/chainsaw/MyTableModel;->mFilteredEvents:[Lorg/apache/log4j/chainsaw/EventDetails;

    aget-object v1, v1, p1

    .line 190
    .local v1, "event":Lorg/apache/log4j/chainsaw/EventDetails;
    if-nez p2, :cond_0

    .line 191
    sget-object v2, Lorg/apache/log4j/chainsaw/MyTableModel;->DATE_FORMATTER:Ljava/text/DateFormat;

    new-instance v3, Ljava/util/Date;

    invoke-virtual {v1}, Lorg/apache/log4j/chainsaw/EventDetails;->getTimeStamp()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 192
    :cond_0
    const/4 v2, 0x1

    if-ne p2, v2, :cond_1

    .line 193
    invoke-virtual {v1}, Lorg/apache/log4j/chainsaw/EventDetails;->getPriority()Lorg/apache/log4j/Priority;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 194
    :cond_1
    const/4 v2, 0x2

    if-ne p2, v2, :cond_3

    .line 195
    invoke-virtual {v1}, Lorg/apache/log4j/chainsaw/EventDetails;->getThrowableStrRep()[Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_2
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    monitor-exit v0

    return-object v2

    .line 197
    :cond_3
    const/4 v2, 0x3

    if-ne p2, v2, :cond_4

    .line 198
    invoke-virtual {v1}, Lorg/apache/log4j/chainsaw/EventDetails;->getCategoryName()Ljava/lang/String;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 199
    :cond_4
    const/4 v2, 0x4

    if-ne p2, v2, :cond_5

    .line 200
    invoke-virtual {v1}, Lorg/apache/log4j/chainsaw/EventDetails;->getNDC()Ljava/lang/String;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 202
    :cond_5
    invoke-virtual {v1}, Lorg/apache/log4j/chainsaw/EventDetails;->getMessage()Ljava/lang/String;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 203
    .end local v1    # "event":Lorg/apache/log4j/chainsaw/EventDetails;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isPaused()Z
    .locals 2

    .line 303
    iget-object v0, p0, Lorg/apache/log4j/chainsaw/MyTableModel;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 304
    :try_start_0
    iget-boolean v1, p0, Lorg/apache/log4j/chainsaw/MyTableModel;->mPaused:Z

    monitor-exit v0

    return v1

    .line 305
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setCategoryFilter(Ljava/lang/String;)V
    .locals 2
    .param p1, "aStr"    # Ljava/lang/String;

    .line 265
    iget-object v0, p0, Lorg/apache/log4j/chainsaw/MyTableModel;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 266
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/log4j/chainsaw/MyTableModel;->mCategoryFilter:Ljava/lang/String;

    .line 267
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lorg/apache/log4j/chainsaw/MyTableModel;->updateFilteredEvents(Z)V

    .line 268
    monitor-exit v0

    .line 269
    return-void

    .line 268
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setMessageFilter(Ljava/lang/String;)V
    .locals 2
    .param p1, "aStr"    # Ljava/lang/String;

    .line 241
    iget-object v0, p0, Lorg/apache/log4j/chainsaw/MyTableModel;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 242
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/log4j/chainsaw/MyTableModel;->mMessageFilter:Ljava/lang/String;

    .line 243
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lorg/apache/log4j/chainsaw/MyTableModel;->updateFilteredEvents(Z)V

    .line 244
    monitor-exit v0

    .line 245
    return-void

    .line 244
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setNDCFilter(Ljava/lang/String;)V
    .locals 2
    .param p1, "aStr"    # Ljava/lang/String;

    .line 253
    iget-object v0, p0, Lorg/apache/log4j/chainsaw/MyTableModel;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 254
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/log4j/chainsaw/MyTableModel;->mNDCFilter:Ljava/lang/String;

    .line 255
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lorg/apache/log4j/chainsaw/MyTableModel;->updateFilteredEvents(Z)V

    .line 256
    monitor-exit v0

    .line 257
    return-void

    .line 256
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setPriorityFilter(Lorg/apache/log4j/Priority;)V
    .locals 2
    .param p1, "aPriority"    # Lorg/apache/log4j/Priority;

    .line 217
    iget-object v0, p0, Lorg/apache/log4j/chainsaw/MyTableModel;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 218
    :try_start_0
    iput-object p1, p0, Lorg/apache/log4j/chainsaw/MyTableModel;->mPriorityFilter:Lorg/apache/log4j/Priority;

    .line 219
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lorg/apache/log4j/chainsaw/MyTableModel;->updateFilteredEvents(Z)V

    .line 220
    monitor-exit v0

    .line 221
    return-void

    .line 220
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setThreadFilter(Ljava/lang/String;)V
    .locals 2
    .param p1, "aStr"    # Ljava/lang/String;

    .line 229
    iget-object v0, p0, Lorg/apache/log4j/chainsaw/MyTableModel;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 230
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/log4j/chainsaw/MyTableModel;->mThreadFilter:Ljava/lang/String;

    .line 231
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lorg/apache/log4j/chainsaw/MyTableModel;->updateFilteredEvents(Z)V

    .line 232
    monitor-exit v0

    .line 233
    return-void

    .line 232
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public toggle()V
    .locals 2

    .line 296
    iget-object v0, p0, Lorg/apache/log4j/chainsaw/MyTableModel;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 297
    :try_start_0
    iget-boolean v1, p0, Lorg/apache/log4j/chainsaw/MyTableModel;->mPaused:Z

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, p0, Lorg/apache/log4j/chainsaw/MyTableModel;->mPaused:Z

    .line 298
    monitor-exit v0

    .line 299
    return-void

    .line 298
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
