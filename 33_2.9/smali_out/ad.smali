.class public final Lad;
.super Lde;
.source "PG"

# interfaces
.implements Lei;


# static fields
.field public static final a:Lad;


# instance fields
.field private b:I

.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lad;

    .line 1
    invoke-direct {v0}, Lad;-><init>()V

    sput-object v0, Lad;->a:Lad;

    const-class v1, Lad;

    .line 2
    invoke-static {v1, v0}, Lde;->a(Ljava/lang/Class;Lde;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Lde;-><init>()V

    return-void
.end method

.method public static synthetic a(Lad;)V
    .registers 3

    iget v0, p0, Lad;->b:I

    const/4 v1, 0x1

    or-int/2addr v0, v1

    iput v0, p0, Lad;->b:I

    iput-boolean v1, p0, Lad;->c:Z

    return-void
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 4

    add-int/lit8 p1, p1, -0x1

    const/4 p0, 0x1

    if-eqz p1, :cond_35

    if-eq p1, p0, :cond_33

    const/4 p2, 0x2

    if-eq p1, p2, :cond_1f

    const/4 p0, 0x3

    if-eq p1, p0, :cond_19

    const/4 p0, 0x4

    if-eq p1, p0, :cond_13

    sget-object p0, Lad;->a:Lad;

    return-object p0

    .line 6
    :cond_13
    new-instance p0, Lac;

    .line 4
    invoke-direct {p0}, Lac;-><init>()V

    return-object p0

    :cond_19
    new-instance p0, Lad;

    .line 5
    invoke-direct {p0}, Lad;-><init>()V

    return-object p0

    :cond_1f
    new-array p1, p2, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "b"

    aput-object v0, p1, p2

    const-string p2, "c"

    aput-object p2, p1, p0

    .line 0
    sget-object p0, Lad;->a:Lad;

    const-string p2, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u1007\u0000"

    .line 6
    invoke-static {p0, p2, p1}, Lad;->a(Leh;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_33
    const/4 p0, 0x0

    return-object p0

    .line 7
    :cond_35
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method
