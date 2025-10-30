.class public abstract Lde;
.super Lbu;
.source "PG"


# static fields
.field public static final j:Ljava/util/Map;


# instance fields
.field protected h:Lfi;

.field protected i:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 1
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lde;->j:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 2
    invoke-direct {p0}, Lbu;-><init>()V

    .line 3
    sget-object v0, Lfi;->a:Lfi;

    iput-object v0, p0, Lde;->h:Lfi;

    const/4 v0, -0x1

    iput v0, p0, Lde;->i:I

    return-void
.end method

.method public static a(Leh;Ljava/lang/Object;Leh;ILfy;Ljava/lang/Class;)Lcq;
    .registers 7

    new-instance p5, Lcq;

    new-instance v0, Ldd;

    .line 29
    invoke-direct {v0, p3, p4}, Ldd;-><init>(ILfy;)V

    invoke-direct {p5, p0, p1, p2, v0}, Lcq;-><init>(Leh;Ljava/lang/Object;Leh;Ldd;)V

    return-object p5
.end method

.method public static a(Lde;[BILcs;)Lde;
    .registers 11

    const/4 v0, 0x4

    .line 32
    invoke-virtual {p0, v0}, Lde;->b(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lde;

    .line 33
    :try_start_7
    sget-object v0, Lep;->a:Lep;

    invoke-virtual {v0, p0}, Lep;->a(Ljava/lang/Object;)Les;

    move-result-object v6

    new-instance v5, Lby;

    .line 34
    invoke-direct {v5, p3}, Lby;-><init>(Lcs;)V

    const/4 v3, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v4, p2

    invoke-interface/range {v0 .. v5}, Les;->a(Ljava/lang/Object;[BIILby;)V

    .line 35
    invoke-interface {v6, p0}, Les;->d(Ljava/lang/Object;)V

    .line 36
    iget p1, p0, Lde;->g:I

    if-nez p1, :cond_22

    return-object p0

    :cond_22
    new-instance p0, Ljava/lang/RuntimeException;

    .line 37
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_28} :catch_2d
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7 .. :try_end_28} :catch_28

    .line 38
    :catch_28
    invoke-static {}, Ldl;->a()Ldl;

    move-result-object p0

    throw p0

    :catch_2d
    move-exception p0

    .line 39
    invoke-virtual {p0}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Ldl;

    if-eqz p1, :cond_3d

    .line 40
    invoke-virtual {p0}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Ldl;

    throw p0

    .line 37
    :cond_3d
    new-instance p1, Ldl;

    .line 41
    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ldl;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static a(Lde;[BLcs;)Lde;
    .registers 4

    .line 30
    array-length v0, p1

    .line 31
    invoke-static {p0, p1, v0, p2}, Lde;->a(Lde;[BILcs;)Lde;

    move-result-object p0

    .line 30
    invoke-static {p0}, Lde;->a(Lde;)V

    return-object p0
.end method

.method protected static a(Leh;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    new-instance v0, Ler;

    .line 28
    invoke-direct {v0, p0, p1, p2}, Ler;-><init>(Leh;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method static varargs a(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 15
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_4} :catch_20
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    move-exception p0

    .line 16
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    .line 17
    instance-of p1, p0, Ljava/lang/RuntimeException;

    if-nez p1, :cond_1d

    .line 19
    instance-of p1, p0, Ljava/lang/Error;

    if-eqz p1, :cond_15

    .line 20
    check-cast p0, Ljava/lang/Error;

    throw p0

    .line 18
    :cond_15
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Unexpected exception thrown by generated accessor method."

    .line 21
    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 18
    :cond_1d
    check-cast p0, Ljava/lang/RuntimeException;

    throw p0

    :catch_20
    move-exception p0

    .line 15
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Couldn\'t use Java reflection to implement protocol message reflection."

    .line 22
    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static a(Lde;)V
    .registers 2

    if-eqz p0, :cond_18

    .line 4
    invoke-virtual {p0}, Lde;->c()Z

    move-result p0

    if-eqz p0, :cond_9

    goto :goto_18

    :cond_9
    new-instance p0, Lfg;

    .line 5
    invoke-direct {p0}, Lfg;-><init>()V

    new-instance v0, Ldl;

    .line 6
    invoke-virtual {p0}, Lfg;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ldl;-><init>(Ljava/lang/String;)V

    .line 7
    throw v0

    :cond_18
    :goto_18
    return-void
.end method

.method protected static a(Ljava/lang/Class;Lde;)V
    .registers 3

    sget-object v0, Lde;->j:Ljava/util/Map;

    .line 42
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static b(Lcq;)Lcq;
    .registers 1

    return-object p0
.end method


# virtual methods
.method protected abstract a(ILjava/lang/Object;)Ljava/lang/Object;
.end method

.method public final a(I)V
    .registers 2

    iput p1, p0, Lde;->i:I

    return-void
.end method

.method public final a(Lcn;)V
    .registers 4

    .line 50
    sget-object v0, Lep;->a:Lep;

    .line 51
    invoke-virtual {v0, p0}, Lep;->a(Ljava/lang/Object;)Les;

    move-result-object v0

    iget-object v1, p1, Lcn;->b:Lco;

    if-nez v1, :cond_f

    new-instance v1, Lco;

    .line 52
    invoke-direct {v1, p1}, Lco;-><init>(Lcn;)V

    .line 53
    :cond_f
    invoke-interface {v0, p0, v1}, Les;->a(Ljava/lang/Object;Lgb;)V

    return-void
.end method

.method public final bridge synthetic b()Leg;
    .registers 2

    const/4 v0, 0x5

    .line 43
    invoke-virtual {p0, v0}, Lde;->b(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lda;

    .line 44
    invoke-virtual {v0, p0}, Lda;->a(Lde;)V

    return-object v0
.end method

.method public final b(I)Ljava/lang/Object;
    .registers 3

    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0, p1, v0}, Lde;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final c()Z
    .registers 4

    .line 23
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    .line 24
    invoke-virtual {p0, v1}, Lde;->b(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    if-ne v2, v1, :cond_14

    goto :goto_2f

    :cond_14
    if-eqz v2, :cond_2e

    .line 25
    sget-object v2, Lep;->a:Lep;

    invoke-virtual {v2, p0}, Lep;->a(Ljava/lang/Object;)Les;

    move-result-object v2

    invoke-interface {v2, p0}, Les;->e(Ljava/lang/Object;)Z

    move-result v2

    if-nez v0, :cond_24

    move v1, v2

    goto :goto_2f

    :cond_24
    if-eq v1, v2, :cond_28

    const/4 v0, 0x0

    goto :goto_29

    :cond_28
    move-object v0, p0

    :goto_29
    const/4 v1, 0x2

    .line 26
    invoke-virtual {p0, v1, v0}, Lde;->a(ILjava/lang/Object;)Ljava/lang/Object;

    return v2

    :cond_2e
    const/4 v1, 0x0

    :goto_2f
    return v1
.end method

.method public final e()Lda;
    .registers 2

    const/4 v0, 0x5

    .line 8
    invoke-virtual {p0, v0}, Lde;->b(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lda;

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 5

    if-eq p0, p1, :cond_1d

    const/4 v0, 0x0

    if-eqz p1, :cond_1c

    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_1c

    .line 11
    sget-object v0, Lep;->a:Lep;

    invoke-virtual {v0, p0}, Lep;->a(Ljava/lang/Object;)Les;

    move-result-object v0

    check-cast p1, Lde;

    invoke-interface {v0, p0, p1}, Les;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1c
    return v0

    :cond_1d
    const/4 p0, 0x1

    return p0
.end method

.method public final f()I
    .registers 3

    iget v0, p0, Lde;->i:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_11

    .line 13
    sget-object v0, Lep;->a:Lep;

    invoke-virtual {v0, p0}, Lep;->a(Ljava/lang/Object;)Les;

    move-result-object v0

    invoke-interface {v0, p0}, Les;->b(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lde;->i:I

    :cond_11
    return v0
.end method

.method public final hashCode()I
    .registers 2

    iget v0, p0, Lde;->g:I

    if-nez v0, :cond_10

    .line 14
    sget-object v0, Lep;->a:Lep;

    invoke-virtual {v0, p0}, Lep;->a(Ljava/lang/Object;)Les;

    move-result-object v0

    invoke-interface {v0, p0}, Les;->a(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lde;->g:I

    :cond_10
    return v0
.end method

.method public final bridge synthetic i()Leh;
    .registers 2

    const/4 v0, 0x6

    .line 12
    invoke-virtual {p0, v0}, Lde;->b(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lde;

    return-object p0
.end method

.method public final k()I
    .registers 1

    iget p0, p0, Lde;->i:I

    return p0
.end method

.method public final bridge synthetic l()Leg;
    .registers 2

    const/4 v0, 0x5

    .line 27
    invoke-virtual {p0, v0}, Lde;->b(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lda;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    .line 45
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    .line 46
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# "

    .line 47
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    .line 48
    invoke-static {p0, v1, v0}, Lej;->a(Leh;Ljava/lang/StringBuilder;I)V

    .line 49
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
