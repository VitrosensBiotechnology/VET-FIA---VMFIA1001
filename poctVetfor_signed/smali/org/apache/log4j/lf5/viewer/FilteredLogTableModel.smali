.class public Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;
.super Ljavax/swing/table/AbstractTableModel;
.source "FilteredLogTableModel.java"


# instance fields
.field protected _allRecords:Ljava/util/List;

.field protected _colNames:[Ljava/lang/String;

.field protected _filter:Lorg/apache/log4j/lf5/LogRecordFilter;

.field protected _filteredRecords:Ljava/util/List;

.field protected _maxNumberOfLogRecords:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 72
    invoke-direct {p0}, Ljavax/swing/table/AbstractTableModel;-><init>()V

    .line 49
    new-instance v0, Lorg/apache/log4j/lf5/PassingLogRecordFilter;

    invoke-direct {v0}, Lorg/apache/log4j/lf5/PassingLogRecordFilter;-><init>()V

    iput-object v0, p0, Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;->_filter:Lorg/apache/log4j/lf5/LogRecordFilter;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;->_allRecords:Ljava/util/List;

    .line 52
    const/16 v0, 0x1388

    iput v0, p0, Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;->_maxNumberOfLogRecords:I

    .line 53
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Date"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Thread"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "Message #"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "Level"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "NDC"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "Category"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "Message"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string v1, "Location"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string v1, "Thrown"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iput-object v0, p0, Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;->_colNames:[Ljava/lang/String;

    .line 73
    return-void
.end method

.method private numberOfRecordsToTrim()I
    .locals 2

    .line 256
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;->_allRecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;->_maxNumberOfLogRecords:I

    sub-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public declared-synchronized addLogRecord(Lorg/apache/log4j/lf5/LogRecord;)Z
    .locals 2
    .param p1, "record"    # Lorg/apache/log4j/lf5/LogRecord;

    monitor-enter p0

    .line 117
    :try_start_0
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;->_allRecords:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;->_filter:Lorg/apache/log4j/lf5/LogRecordFilter;

    invoke-interface {v0, p1}, Lorg/apache/log4j/lf5/LogRecordFilter;->passes(Lorg/apache/log4j/lf5/LogRecord;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 120
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 122
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;->getFilteredRecords()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;->getRowCount()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;->getRowCount()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;->fireTableRowsInserted(II)V

    .line 124
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;->trimRecords()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 125
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 116
    .end local p1    # "record":Lorg/apache/log4j/lf5/LogRecord;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized clear()V
    .locals 1

    monitor-enter p0

    .line 147
    :try_start_0
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;->_allRecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 148
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;->_filteredRecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 149
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;->fireTableDataChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    monitor-exit p0

    return-void

    .line 146
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected createFilteredRecordsList()Ljava/util/List;
    .locals 4

    .line 164
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 165
    .local v0, "result":Ljava/util/List;
    iget-object v1, p0, Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;->_allRecords:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 167
    .local v1, "records":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 168
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/log4j/lf5/LogRecord;

    .line 169
    .local v2, "current":Lorg/apache/log4j/lf5/LogRecord;
    iget-object v3, p0, Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;->_filter:Lorg/apache/log4j/lf5/LogRecordFilter;

    invoke-interface {v3, v2}, Lorg/apache/log4j/lf5/LogRecordFilter;->passes(Lorg/apache/log4j/lf5/LogRecord;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 170
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 173
    .end local v2    # "current":Lorg/apache/log4j/lf5/LogRecord;
    :cond_1
    return-object v0
.end method

.method public declared-synchronized fastRefresh()V
    .locals 2

    monitor-enter p0

    .line 138
    :try_start_0
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;->_filteredRecords:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 139
    invoke-virtual {p0, v1, v1}, Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;->fireTableRowsDeleted(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    monitor-exit p0

    return-void

    .line 137
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected getColumn(ILorg/apache/log4j/lf5/LogRecord;)Ljava/lang/Object;
    .locals 4
    .param p1, "col"    # I
    .param p2, "lr"    # Lorg/apache/log4j/lf5/LogRecord;

    .line 191
    if-nez p2, :cond_0

    .line 192
    const-string v0, "NULL Column"

    return-object v0

    .line 194
    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p2}, Lorg/apache/log4j/lf5/LogRecord;->getMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v0

    .line 195
    .local v0, "date":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 215
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "The column number "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, "must be between 0 and 8"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 216
    .local v1, "message":Ljava/lang/String;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 213
    .end local v1    # "message":Ljava/lang/String;
    :pswitch_0
    invoke-virtual {p2}, Lorg/apache/log4j/lf5/LogRecord;->getThrownStackTrace()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 211
    :pswitch_1
    invoke-virtual {p2}, Lorg/apache/log4j/lf5/LogRecord;->getLocation()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 209
    :pswitch_2
    invoke-virtual {p2}, Lorg/apache/log4j/lf5/LogRecord;->getMessage()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 207
    :pswitch_3
    invoke-virtual {p2}, Lorg/apache/log4j/lf5/LogRecord;->getCategory()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 205
    :pswitch_4
    invoke-virtual {p2}, Lorg/apache/log4j/lf5/LogRecord;->getNDC()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 203
    :pswitch_5
    invoke-virtual {p2}, Lorg/apache/log4j/lf5/LogRecord;->getLevel()Lorg/apache/log4j/lf5/LogLevel;

    move-result-object v1

    return-object v1

    .line 201
    :pswitch_6
    new-instance v1, Ljava/lang/Long;

    invoke-virtual {p2}, Lorg/apache/log4j/lf5/LogRecord;->getSequenceNumber()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    return-object v1

    .line 199
    :pswitch_7
    invoke-virtual {p2}, Lorg/apache/log4j/lf5/LogRecord;->getThreadDescription()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 197
    :pswitch_8
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Lorg/apache/log4j/lf5/LogRecord;->getMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getColumnCount()I
    .locals 1

    .line 92
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;->_colNames:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getColumnName(I)Ljava/lang/String;
    .locals 1
    .param p1, "i"    # I

    .line 88
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;->_colNames:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method protected getFilteredRecord(I)Lorg/apache/log4j/lf5/LogRecord;
    .locals 3
    .param p1, "row"    # I

    .line 177
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;->getFilteredRecords()Ljava/util/List;

    move-result-object v0

    .line 178
    .local v0, "records":Ljava/util/List;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 179
    .local v1, "size":I
    if-ge p1, v1, :cond_0

    .line 180
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/log4j/lf5/LogRecord;

    return-object v2

    .line 186
    :cond_0
    add-int/lit8 v2, v1, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/log4j/lf5/LogRecord;

    return-object v2
.end method

.method protected getFilteredRecords()Ljava/util/List;
    .locals 1

    .line 157
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;->_filteredRecords:Ljava/util/List;

    if-nez v0, :cond_0

    .line 158
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;->refresh()V

    .line 160
    :cond_0
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;->_filteredRecords:Ljava/util/List;

    return-object v0
.end method

.method public getLogRecordFilter()Lorg/apache/log4j/lf5/LogRecordFilter;
    .locals 1

    .line 84
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;->_filter:Lorg/apache/log4j/lf5/LogRecordFilter;

    return-object v0
.end method

.method public getRowCount()I
    .locals 1

    .line 96
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;->getFilteredRecords()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getTotalRowCount()I
    .locals 1

    .line 100
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;->_allRecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getValueAt(II)Ljava/lang/Object;
    .locals 2
    .param p1, "row"    # I
    .param p2, "col"    # I

    .line 104
    invoke-virtual {p0, p1}, Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;->getFilteredRecord(I)Lorg/apache/log4j/lf5/LogRecord;

    move-result-object v0

    .line 105
    .local v0, "record":Lorg/apache/log4j/lf5/LogRecord;
    invoke-virtual {p0, p2, v0}, Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;->getColumn(ILorg/apache/log4j/lf5/LogRecord;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method protected needsTrimming()Z
    .locals 2

    .line 233
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;->_allRecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;->_maxNumberOfLogRecords:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public declared-synchronized refresh()V
    .locals 1

    monitor-enter p0

    .line 133
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;->createFilteredRecordsList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;->_filteredRecords:Ljava/util/List;

    .line 134
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;->fireTableDataChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    monitor-exit p0

    return-void

    .line 132
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setLogRecordFilter(Lorg/apache/log4j/lf5/LogRecordFilter;)V
    .locals 0
    .param p1, "filter"    # Lorg/apache/log4j/lf5/LogRecordFilter;

    .line 80
    iput-object p1, p0, Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;->_filter:Lorg/apache/log4j/lf5/LogRecordFilter;

    .line 81
    return-void
.end method

.method public setMaxNumberOfLogRecords(I)V
    .locals 0
    .param p1, "maxNumRecords"    # I

    .line 109
    if-lez p1, :cond_0

    .line 110
    iput p1, p0, Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;->_maxNumberOfLogRecords:I

    .line 113
    :cond_0
    return-void
.end method

.method protected trimOldestRecords()V
    .locals 4

    .line 237
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;->_allRecords:Ljava/util/List;

    monitor-enter v0

    .line 238
    :try_start_0
    invoke-direct {p0}, Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;->numberOfRecordsToTrim()I

    move-result v1

    .line 239
    .local v1, "trim":I
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-le v1, v2, :cond_0

    .line 240
    iget-object v2, p0, Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;->_allRecords:Ljava/util/List;

    invoke-interface {v2, v3, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    .line 242
    .local v2, "oldRecords":Ljava/util/List;
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 243
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;->refresh()V

    .line 244
    .end local v2    # "oldRecords":Ljava/util/List;
    goto :goto_0

    .line 245
    :cond_0
    iget-object v2, p0, Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;->_allRecords:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 246
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;->fastRefresh()V

    .line 248
    .end local v1    # "trim":I
    :goto_0
    monitor-exit v0

    .line 250
    return-void

    .line 248
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected trimRecords()V
    .locals 1

    .line 227
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;->needsTrimming()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;->trimOldestRecords()V

    .line 230
    :cond_0
    return-void
.end method
