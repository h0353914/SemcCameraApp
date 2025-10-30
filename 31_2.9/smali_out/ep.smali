.class final Lep;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lep;


# instance fields
.field private final b:Let;

.field private final c:Ljava/util/concurrent/ConcurrentMap;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lep;

    .line 1
    invoke-direct {v0}, Lep;-><init>()V

    sput-object v0, Lep;->a:Lep;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lep;->c:Ljava/util/concurrent/ConcurrentMap;

    new-instance v0, Ldz;

    .line 4
    invoke-direct {v0}, Ldz;-><init>()V

    iput-object v0, p0, Lep;->b:Let;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Les;
    .registers 9

    const-string v0, "messageType"

    .line 5
    invoke-static {p1, v0}, Ldj;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lep;->c:Ljava/util/concurrent/ConcurrentMap;

    .line 6
    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Les;

    if-nez v0, :cond_ab

    iget-object v0, p0, Lep;->b:Let;

    .line 7
    invoke-static {p1}, Leu;->a(Ljava/lang/Class;)V

    check-cast v0, Ldz;

    iget-object v0, v0, Ldz;->a:Lef;

    .line 8
    invoke-interface {v0, p1}, Lef;->b(Ljava/lang/Class;)Lee;

    move-result-object v1

    .line 9
    invoke-interface {v1}, Lee;->a()Z

    move-result v0

    if-eqz v0, :cond_46

    const-class v0, Lde;

    .line 10
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_37

    sget-object v0, Leu;->c:Lfh;

    .line 11
    sget-object v2, Lct;->a:Lej;

    .line 12
    invoke-interface {v1}, Lee;->b()Leh;

    move-result-object v1

    .line 13
    invoke-static {v0, v2, v1}, Lel;->a(Lfh;Lej;Leh;)Lel;

    move-result-object v0

    goto :goto_95

    .line 40
    :cond_37
    sget-object v0, Leu;->a:Lfh;

    .line 14
    invoke-static {}, Lct;->a()Lej;

    move-result-object v2

    .line 15
    invoke-interface {v1}, Lee;->b()Leh;

    move-result-object v1

    .line 16
    invoke-static {v0, v2, v1}, Lel;->a(Lfh;Lej;Leh;)Lel;

    move-result-object v0

    goto :goto_95

    :cond_46
    const-class v0, Lde;

    .line 17
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_71

    .line 18
    invoke-static {v1}, Ldz;->a(Lee;)Z

    move-result v0

    if-eqz v0, :cond_63

    .line 19
    sget-object v2, Len;->b:Lfs;

    .line 20
    sget-object v3, Ldv;->b:Ldv;

    sget-object v4, Leu;->c:Lfh;

    .line 21
    sget-object v5, Lct;->a:Lej;

    .line 22
    sget-object v6, Led;->b:Lff;

    .line 23
    invoke-static/range {v1 .. v6}, Lek;->a(Lee;Lfs;Ldv;Lfh;Lej;Lff;)Lek;

    move-result-object v0

    goto :goto_95

    .line 24
    :cond_63
    sget-object v2, Len;->b:Lfs;

    .line 25
    sget-object v3, Ldv;->b:Ldv;

    sget-object v4, Leu;->c:Lfh;

    const/4 v5, 0x0

    .line 26
    sget-object v6, Led;->b:Lff;

    .line 27
    invoke-static/range {v1 .. v6}, Lek;->a(Lee;Lfs;Ldv;Lfh;Lej;Lff;)Lek;

    move-result-object v0

    goto :goto_95

    .line 28
    :cond_71
    invoke-static {v1}, Ldz;->a(Lee;)Z

    move-result v0

    if-eqz v0, :cond_88

    .line 29
    sget-object v2, Len;->a:Lfs;

    .line 30
    sget-object v3, Ldv;->a:Ldv;

    sget-object v4, Leu;->a:Lfh;

    .line 31
    invoke-static {}, Lct;->a()Lej;

    move-result-object v5

    .line 32
    sget-object v6, Led;->a:Lff;

    .line 33
    invoke-static/range {v1 .. v6}, Lek;->a(Lee;Lfs;Ldv;Lfh;Lej;Lff;)Lek;

    move-result-object v0

    goto :goto_95

    .line 34
    :cond_88
    sget-object v2, Len;->a:Lfs;

    .line 35
    sget-object v3, Ldv;->a:Ldv;

    sget-object v4, Leu;->b:Lfh;

    const/4 v5, 0x0

    .line 36
    sget-object v6, Led;->a:Lff;

    .line 37
    invoke-static/range {v1 .. v6}, Lek;->a(Lee;Lfs;Ldv;Lfh;Lej;Lff;)Lek;

    move-result-object v0

    :goto_95
    const-string v1, "messageType"

    .line 38
    invoke-static {p1, v1}, Ldj;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "schema"

    .line 39
    invoke-static {v0, v1}, Ldj;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lep;->c:Ljava/util/concurrent/ConcurrentMap;

    .line 40
    invoke-interface {v1, p1, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Les;

    if-nez p1, :cond_aa

    goto :goto_ab

    :cond_aa
    return-object p1

    :cond_ab
    :goto_ab
    return-object v0
.end method

.method public final a(Ljava/lang/Object;)Les;
    .registers 2

    .line 41
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1}, Lep;->a(Ljava/lang/Class;)Les;

    move-result-object p1

    return-object p1
.end method
