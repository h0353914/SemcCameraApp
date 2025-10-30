.class public final Lcq;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field final a:Leh;

.field public final b:Ljava/lang/Object;

.field final c:Leh;

.field public final d:Ldd;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Leh;Ljava/lang/Object;Leh;Ldd;)V
    .registers 7

    .line 2
    invoke-direct {p0}, Lcq;-><init>()V

    if-eqz p1, :cond_1f

    .line 3
    iget-object v0, p4, Ldd;->b:Lfy;

    .line 4
    sget-object v1, Lfy;->k:Lfy;

    if-eq v0, v1, :cond_c

    goto :goto_e

    :cond_c
    if-eqz p3, :cond_17

    :goto_e
    iput-object p1, p0, Lcq;->a:Leh;

    iput-object p2, p0, Lcq;->b:Ljava/lang/Object;

    iput-object p3, p0, Lcq;->c:Leh;

    iput-object p4, p0, Lcq;->d:Ldd;

    return-void

    :cond_17
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Null messageDefaultInstance"

    .line 5
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2
    :cond_1f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Null containingTypeDefaultInstance"

    .line 3
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()Lfy;
    .registers 2

    iget-object v0, p0, Lcq;->d:Ldd;

    iget-object v0, v0, Ldd;->b:Lfy;

    return-object v0
.end method

.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 6
    invoke-virtual {p0, p1}, Lcq;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lcq;->d:Ldd;

    .line 7
    invoke-virtual {v0}, Ldd;->c()Lfz;

    move-result-object v0

    sget-object v1, Lfz;->h:Lfz;

    if-eq v0, v1, :cond_b

    return-object p1

    .line 8
    :cond_b
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    const/4 p1, 0x0

    throw p1
.end method

.method public c(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lcq;->d:Ldd;

    .line 9
    invoke-virtual {v0}, Ldd;->c()Lfz;

    move-result-object v0

    sget-object v1, Lfz;->h:Lfz;

    if-ne v0, v1, :cond_14

    .line 10
    check-cast p1, Ldg;

    invoke-interface {p1}, Ldg;->a()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :cond_14
    return-object p1
.end method
