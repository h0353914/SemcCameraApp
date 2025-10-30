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
    .registers 7

    .line 4
    invoke-static {p1, p2, p3}, Lfr;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 5
    instance-of v1, v0, Lds;

    if-eqz v1, :cond_11

    .line 6
    check-cast v0, Lds;

    invoke-interface {v0}, Lds;->e()Lds;

    move-result-object v0

    goto :goto_36

    .line 10
    :cond_11
    sget-object v1, Ldt;->c:Ljava/lang/Class;

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_3a

    .line 8
    instance-of v1, v0, Leo;

    if-eqz v1, :cond_32

    instance-of v1, v0, Ldi;

    if-nez v1, :cond_26

    goto :goto_32

    .line 11
    :cond_26
    check-cast v0, Ldi;

    invoke-interface {v0}, Ldi;->a()Z

    move-result p1

    if-eqz p1, :cond_31

    .line 12
    invoke-interface {v0}, Ldi;->b()V

    :cond_31
    return-void

    .line 9
    :cond_32
    :goto_32
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 10
    :goto_36
    invoke-static {p1, p2, p3, v0}, Lfr;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void

    :cond_3a
    return-void
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;J)V
    .registers 9

    .line 13
    invoke-static {p2, p3, p4}, Ldt;->b(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object p2

    .line 14
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 15
    invoke-static {p1, p3, p4}, Ldt;->b(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 16
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_35

    .line 17
    instance-of v2, v1, Lds;

    if-eqz v2, :cond_1c

    .line 18
    new-instance v1, Ldr;

    invoke-direct {v1, v0}, Ldr;-><init>(I)V

    goto :goto_31

    .line 19
    :cond_1c
    instance-of v2, v1, Leo;

    if-eqz v2, :cond_2c

    instance-of v2, v1, Ldi;

    if-nez v2, :cond_25

    goto :goto_2c

    .line 21
    :cond_25
    check-cast v1, Ldi;

    invoke-interface {v1, v0}, Ldi;->a(I)Ldi;

    move-result-object v1

    goto :goto_31

    .line 19
    :cond_2c
    :goto_2c
    new-instance v1, Ljava/util/ArrayList;

    .line 20
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 22
    :goto_31
    invoke-static {p1, p3, p4, v1}, Lfr;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_89

    .line 21
    :cond_35
    sget-object v2, Ldt;->c:Ljava/lang/Class;

    .line 23
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_53

    new-instance v2, Ljava/util/ArrayList;

    .line 24
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v3, v0

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 25
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 26
    invoke-static {p1, p3, p4, v2}, Lfr;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object v1, v2

    goto :goto_89

    .line 27
    :cond_53
    instance-of v2, v1, Lfl;

    if-eqz v2, :cond_6b

    .line 28
    new-instance v2, Ldr;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v3, v0

    invoke-direct {v2, v3}, Ldr;-><init>(I)V

    .line 29
    check-cast v1, Lfl;

    invoke-virtual {v2, v1}, Lbw;->addAll(Ljava/util/Collection;)Z

    .line 30
    invoke-static {p1, p3, p4, v2}, Lfr;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object v1, v2

    goto :goto_89

    .line 31
    :cond_6b
    instance-of v2, v1, Leo;

    if-eqz v2, :cond_89

    instance-of v2, v1, Ldi;

    if-eqz v2, :cond_89

    move-object v2, v1

    check-cast v2, Ldi;

    .line 32
    invoke-interface {v2}, Ldi;->a()Z

    move-result v3

    if-nez v3, :cond_89

    .line 33
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v1, v0

    invoke-interface {v2, v1}, Ldi;->a(I)Ldi;

    move-result-object v0

    .line 34
    invoke-static {p1, p3, p4, v0}, Lfr;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object v1, v0

    .line 35
    :cond_89
    :goto_89
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 36
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v0, :cond_98

    if-lez v2, :cond_98

    .line 37
    invoke-interface {v1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_98
    if-gtz v0, :cond_9b

    goto :goto_9c

    :cond_9b
    move-object p2, v1

    .line 38
    :goto_9c
    invoke-static {p1, p3, p4, p2}, Lfr;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method
