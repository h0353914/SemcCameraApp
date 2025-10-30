.class public final Lw;
.super Lde;
.source "PG"

# interfaces
.implements Lei;


# static fields
.field public static final a:Lw;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lw;

    .line 1
    invoke-direct {v0}, Lw;-><init>()V

    sput-object v0, Lw;->a:Lw;

    const-class v1, Lw;

    .line 2
    invoke-static {v1, v0}, Lde;->a(Ljava/lang/Class;Lde;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Lde;-><init>()V

    .line 4
    sget-object p0, Leq;->b:Leq;

    return-void
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 3

    add-int/lit8 p1, p1, -0x1

    const/4 p0, 0x1

    if-eqz p1, :cond_2a

    const/4 p2, 0x0

    if-eq p1, p0, :cond_29

    const/4 p0, 0x2

    if-eq p1, p0, :cond_20

    const/4 p0, 0x3

    if-eq p1, p0, :cond_1a

    const/4 p0, 0x4

    if-eq p1, p0, :cond_14

    sget-object p0, Lw;->a:Lw;

    return-object p0

    .line 7
    :cond_14
    new-instance p0, Lv;

    .line 5
    invoke-direct {p0}, Lv;-><init>()V

    return-object p0

    :cond_1a
    new-instance p0, Lw;

    .line 6
    invoke-direct {p0}, Lw;-><init>()V

    return-object p0

    .line 0
    :cond_20
    sget-object p0, Lw;->a:Lw;

    const-string p1, "\u0001\u0000"

    .line 7
    invoke-static {p0, p1, p2}, Lw;->a(Leh;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_29
    return-object p2

    .line 8
    :cond_2a
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method
