.class public Lcs;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static volatile a:Lcs; = null

.field static final b:Lcs;

.field private static volatile c:Z = false

.field private static volatile d:Lcs;


# instance fields
.field private final e:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcs;

    const/4 v1, 0x0

    .line 1
    invoke-direct {v0, v1}, Lcs;-><init>([B)V

    sput-object v0, Lcs;->b:Lcs;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcs;->e:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>([B)V
    .registers 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcs;->e:Ljava/util/Map;

    return-void
.end method

.method public static a()Lcs;
    .registers 2

    sget-object v0, Lcs;->d:Lcs;

    if-nez v0, :cond_14

    const-class v1, Lcs;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lcs;->d:Lcs;

    if-nez v0, :cond_f

    sget-object v0, Lcs;->b:Lcs;

    sput-object v0, Lcs;->d:Lcs;

    .line 8
    :cond_f
    monitor-exit v1

    goto :goto_14

    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_11

    throw v0

    :cond_14
    :goto_14
    return-object v0
.end method


# virtual methods
.method public a(Leh;I)Lcq;
    .registers 5

    iget-object v0, p0, Lcs;->e:Ljava/util/Map;

    new-instance v1, Lcr;

    .line 6
    invoke-direct {v1, p1, p2}, Lcr;-><init>(Ljava/lang/Object;I)V

    .line 7
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcq;

    return-object p1
.end method
