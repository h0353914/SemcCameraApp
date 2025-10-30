.class final Lff;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 2

    .line 5
    check-cast p0, Lec;

    .line 6
    check-cast p1, Leb;

    .line 7
    invoke-virtual {p0}, Lec;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_27

    .line 8
    invoke-virtual {p0}, Lec;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_19

    goto :goto_27

    :cond_19
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    .line 9
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    const/4 p0, 0x0

    throw p0

    :cond_27
    :goto_27
    const/4 p0, 0x0

    return p0
.end method

.method public static a()Ljava/lang/Object;
    .registers 1

    .line 18
    sget-object v0, Lec;->b:Lec;

    invoke-virtual {v0}, Lec;->a()Lec;

    move-result-object v0

    return-object v0
.end method

.method static a(Lck;)Ljava/lang/String;
    .registers 6

    new-instance v0, Lfe;

    .line 20
    invoke-direct {v0, p0}, Lfe;-><init>(Lck;)V

    new-instance p0, Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v0}, Lfe;->a()I

    move-result v1

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    .line 22
    :goto_f
    invoke-virtual {v0}, Lfe;->a()I

    move-result v2

    if-ge v1, v2, :cond_97

    iget-object v2, v0, Lfe;->a:Lck;

    .line 23
    invoke-virtual {v2, v1}, Lck;->a(I)B

    move-result v2

    const/16 v3, 0x22

    if-eq v2, v3, :cond_8e

    const/16 v3, 0x27

    if-eq v2, v3, :cond_88

    const/16 v3, 0x5c

    if-eq v2, v3, :cond_82

    packed-switch v2, :pswitch_data_9c

    const/16 v4, 0x20

    if-ge v2, v4, :cond_2f

    goto :goto_38

    :cond_2f
    const/16 v4, 0x7e

    if-gt v2, v4, :cond_38

    int-to-char v2, v2

    .line 38
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_93

    .line 34
    :cond_38
    :goto_38
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    ushr-int/lit8 v3, v2, 0x6

    and-int/lit8 v3, v3, 0x3

    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    .line 35
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    ushr-int/lit8 v3, v2, 0x3

    and-int/lit8 v3, v3, 0x7

    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    .line 36
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v2, v2, 0x7

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    .line 37
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_93

    :pswitch_58
    const-string v2, "\\r"

    .line 27
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_93

    :pswitch_5e
    const-string v2, "\\f"

    .line 28
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_93

    :pswitch_64
    const-string v2, "\\v"

    .line 29
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_93

    :pswitch_6a
    const-string v2, "\\n"

    .line 30
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_93

    :pswitch_70
    const-string v2, "\\t"

    .line 31
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_93

    :pswitch_76
    const-string v2, "\\b"

    .line 32
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_93

    :pswitch_7c
    const-string v2, "\\a"

    .line 33
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_93

    :cond_82
    const-string v2, "\\\\"

    .line 24
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_93

    :cond_88
    const-string v2, "\\\'"

    .line 25
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_93

    :cond_8e
    const-string v2, "\\\""

    .line 26
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_93
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_f

    .line 39
    :cond_97
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_9c
    .packed-switch 0x7
        :pswitch_7c
        :pswitch_76
        :pswitch_70
        :pswitch_6a
        :pswitch_64
        :pswitch_5e
        :pswitch_58
    .end packed-switch
.end method

.method public static a(Ljava/lang/Object;)Ljava/util/Map;
    .registers 1

    .line 2
    check-cast p0, Lec;

    return-object p0
.end method

.method public static b(Ljava/lang/Object;)Lea;
    .registers 1

    .line 3
    check-cast p0, Leb;

    const/4 p0, 0x0

    throw p0
.end method

.method public static b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 11
    check-cast p0, Lec;

    .line 12
    check-cast p1, Lec;

    .line 13
    invoke-virtual {p1}, Lec;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1e

    iget-boolean v0, p0, Lec;->a:Z

    if-nez v0, :cond_12

    .line 14
    invoke-virtual {p0}, Lec;->a()Lec;

    move-result-object p0

    .line 15
    :cond_12
    invoke-virtual {p0}, Lec;->c()V

    .line 16
    invoke-virtual {p1}, Lec;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 17
    invoke-virtual {p0, p1}, Lec;->putAll(Ljava/util/Map;)V

    :cond_1e
    return-object p0
.end method

.method public static c(Ljava/lang/Object;)Ljava/util/Map;
    .registers 1

    .line 4
    check-cast p0, Lec;

    return-object p0
.end method

.method public static d(Ljava/lang/Object;)Z
    .registers 1

    .line 10
    check-cast p0, Lec;

    iget-boolean p0, p0, Lec;->a:Z

    if-nez p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public static e(Ljava/lang/Object;)V
    .registers 1

    .line 19
    check-cast p0, Lec;

    invoke-virtual {p0}, Lec;->b()V

    return-void
.end method
