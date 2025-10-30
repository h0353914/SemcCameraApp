.class public final Lec;
.super Ljava/util/LinkedHashMap;
.source "PG"


# static fields
.field public static final b:Lec;


# instance fields
.field public a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lec;

    .line 1
    invoke-direct {v0}, Lec;-><init>()V

    sput-object v0, Lec;->b:Lec;

    .line 2
    invoke-virtual {v0}, Lec;->b()V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 3
    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lec;->a:Z

    return-void
.end method

.method private constructor <init>(Ljava/util/Map;)V
    .registers 2

    .line 4
    invoke-direct {p0, p1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lec;->a:Z

    return-void
.end method

.method private static a(Ljava/lang/Object;)I
    .registers 2

    .line 5
    instance-of v0, p0, [B

    if-eqz v0, :cond_b

    .line 6
    check-cast p0, [B

    invoke-static {p0}, Ldj;->c([B)I

    move-result p0

    return p0

    .line 7
    :cond_b
    instance-of v0, p0, Ldg;

    if-nez v0, :cond_14

    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0

    .line 7
    :cond_14
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 8
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method


# virtual methods
.method public final a()Lec;
    .registers 2

    .line 24
    invoke-virtual {p0}, Lec;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    new-instance v0, Lec;

    invoke-direct {v0, p0}, Lec;-><init>(Ljava/util/Map;)V

    goto :goto_11

    :cond_c
    new-instance v0, Lec;

    invoke-direct {v0}, Lec;-><init>()V

    :goto_11
    return-object v0
.end method

.method public final b()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lec;->a:Z

    return-void
.end method

.method public final c()V
    .registers 1

    iget-boolean p0, p0, Lec;->a:Z

    if-eqz p0, :cond_5

    return-void

    :cond_5
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 12
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final clear()V
    .registers 1

    .line 10
    invoke-virtual {p0}, Lec;->c()V

    .line 11
    invoke-super {p0}, Ljava/util/LinkedHashMap;->clear()V

    return-void
.end method

.method public final entrySet()Ljava/util/Set;
    .registers 2

    .line 13
    invoke-virtual {p0}, Lec;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-super {p0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    goto :goto_f

    :cond_b
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p0

    :goto_f
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 5

    .line 14
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_57

    check-cast p1, Ljava/util/Map;

    if-eq p0, p1, :cond_55

    .line 15
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    if-ne v0, v1, :cond_57

    .line 16
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_55

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 17
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_57

    .line 18
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 19
    instance-of v2, v1, [B

    if-eqz v2, :cond_4e

    instance-of v2, v0, [B

    if-nez v2, :cond_45

    goto :goto_4e

    .line 21
    :cond_45
    check-cast v1, [B

    check-cast v0, [B

    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    goto :goto_52

    .line 20
    :cond_4e
    :goto_4e
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_52
    if-nez v0, :cond_1a

    goto :goto_57

    :cond_55
    const/4 p0, 0x1

    return p0

    :cond_57
    :goto_57
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .registers 4

    .line 22
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 23
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lec;->a(Ljava/lang/Object;)I

    move-result v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lec;->a(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v1, v2

    add-int/2addr v0, v1

    goto :goto_9

    :cond_28
    return v0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 25
    invoke-virtual {p0}, Lec;->c()V

    .line 26
    invoke-static {p1}, Ldj;->a(Ljava/lang/Object;)V

    .line 27
    invoke-static {p2}, Ldj;->a(Ljava/lang/Object;)V

    .line 28
    invoke-super {p0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final putAll(Ljava/util/Map;)V
    .registers 4

    .line 29
    invoke-virtual {p0}, Lec;->c()V

    .line 30
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 31
    invoke-static {v1}, Ldj;->a(Ljava/lang/Object;)V

    .line 32
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ldj;->a(Ljava/lang/Object;)V

    goto :goto_b

    .line 33
    :cond_20
    invoke-super {p0, p1}, Ljava/util/LinkedHashMap;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 34
    invoke-virtual {p0}, Lec;->c()V

    .line 35
    invoke-super {p0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
