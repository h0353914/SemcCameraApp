.class final Ldt;
.super Ldv;
.source "PG"


# static fields
.field private static final c:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ldt;->c:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 2
    invoke-direct {p0}, Ldv;-><init>()V

    return-void
.end method

.method static b(Ljava/lang/Object;J)Ljava/util/List;
    .registers 3

    .line 3
    invoke-static {p0, p1, p2}, Lfr;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;J)V
    .registers 6

    .line 4
    invoke-static {p1, p2, p3}, Lfr;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 5
    instance-of v0, p0, Lds;

    if-eqz v0, :cond_11

    .line 6
    check-cast p0, Lds;

    invoke-interface {p0}, Lds;->e()Lds;

    move-result-object p0

    goto :goto_36

    .line 10
    :cond_11
    sget-object v0, Ldt;->c:Ljava/lang/Class;

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_39

    .line 8
    instance-of v0, p0, Leo;

    if-eqz v0, :cond_32

    instance-of v0, p0, Ldi;

    if-nez v0, :cond_26

    goto :goto_32

    .line 11
    :cond_26
    check-cast p0, Ldi;

    invoke-interface {p0}, Ldi;->a()Z

    move-result p1

    if-eqz p1, :cond_31

    .line 12
    invoke-interface {p0}, Ldi;->b()V

    :cond_31
    return-void

    .line 9
    :cond_32
    :goto_32
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    .line 10
    :goto_36
    invoke-static {p1, p2, p3, p0}, Lfr;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_39
    return-void
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;J)V
    .registers 8

    .line 13
    invoke-static {p2, p3, p4}, Ldt;->b(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object p0

    .line 14
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p2

    .line 15
    invoke-static {p1, p3, p4}, Ldt;->b(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    .line 16
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_36

    .line 17
    instance-of v1, v0, Lds;

    if-eqz v1, :cond_1c

    .line 18
    new-instance v0, Ldr;

    invoke-direct {v0, p2}, Ldr;-><init>(I)V

    goto :goto_32

    .line 19
    :cond_1c
    instance-of v1, v0, Leo;

    if-eqz v1, :cond_2d

    instance-of v1, v0, Ldi;

    if-nez v1, :cond_25

    goto :goto_2d

    .line 21
    :cond_25
    check-cast v0, Ldi;

    invoke-interface {v0, p2}, Ldi;->a(I)Ldi;

    move-result-object p2

    move-object v0, p2

    goto :goto_32

    .line 19
    :cond_2d
    :goto_2d
    new-instance v0, Ljava/util/ArrayList;

    .line 20
    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 22
    :goto_32
    invoke-static {p1, p3, p4, v0}, Lfr;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_88

    .line 21
    :cond_36
    sget-object v1, Ldt;->c:Ljava/lang/Class;

    .line 23
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_54

    new-instance v1, Ljava/util/ArrayList;

    .line 24
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v2, p2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 25
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 26
    invoke-static {p1, p3, p4, v1}, Lfr;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_52
    move-object v0, v1

    goto :goto_88

    .line 27
    :cond_54
    instance-of v1, v0, Lfl;

    if-eqz v1, :cond_6b

    .line 28
    new-instance v1, Ldr;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v2, p2

    invoke-direct {v1, v2}, Ldr;-><init>(I)V

    .line 29
    check-cast v0, Lfl;

    invoke-virtual {v1, v0}, Lbw;->addAll(Ljava/util/Collection;)Z

    .line 30
    invoke-static {p1, p3, p4, v1}, Lfr;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_52

    .line 31
    :cond_6b
    instance-of v1, v0, Leo;

    if-eqz v1, :cond_88

    instance-of v1, v0, Ldi;

    if-eqz v1, :cond_88

    move-object v1, v0

    check-cast v1, Ldi;

    .line 32
    invoke-interface {v1}, Ldi;->a()Z

    move-result v2

    if-nez v2, :cond_88

    .line 33
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, p2

    invoke-interface {v1, v0}, Ldi;->a(I)Ldi;

    move-result-object v0

    .line 34
    invoke-static {p1, p3, p4, v0}, Lfr;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 35
    :cond_88
    :goto_88
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    .line 36
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-lez p2, :cond_97

    if-lez v1, :cond_97

    .line 37
    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_97
    if-gtz p2, :cond_9a

    goto :goto_9b

    :cond_9a
    move-object p0, v0

    .line 38
    :goto_9b
    invoke-static {p1, p3, p4, p0}, Lfr;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method
