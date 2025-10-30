.class public final Lo;
.super Ldc;
.source "PG"

# interfaces
.implements Lei;


# static fields
.field public static final c:Lo;


# instance fields
.field public a:I

.field public b:I

.field private e:B


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lo;

    .line 1
    invoke-direct {v0}, Lo;-><init>()V

    sput-object v0, Lo;->c:Lo;

    const-class v1, Lo;

    .line 2
    invoke-static {v1, v0}, Lde;->a(Ljava/lang/Class;Lde;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 3
    invoke-direct {p0}, Ldc;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Lo;->e:B

    return-void
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 5

    add-int/lit8 p1, p1, -0x1

    if-eqz p1, :cond_41

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_39

    const/4 p0, 0x3

    const/4 p2, 0x2

    if-eq p1, p2, :cond_20

    if-eq p1, p0, :cond_1a

    const/4 p0, 0x4

    if-eq p1, p0, :cond_14

    sget-object p0, Lo;->c:Lo;

    return-object p0

    .line 7
    :cond_14
    new-instance p0, Ln;

    .line 4
    invoke-direct {p0}, Ln;-><init>()V

    return-object p0

    :cond_1a
    new-instance p0, Lo;

    .line 5
    invoke-direct {p0}, Lo;-><init>()V

    return-object p0

    :cond_20
    new-array p0, p0, [Ljava/lang/Object;

    const-string p1, "a"

    aput-object p1, p0, v0

    const-string p1, "b"

    aput-object p1, p0, v1

    .line 6
    invoke-static {}, Lm;->a()Ldh;

    move-result-object p1

    aput-object p1, p0, p2

    sget-object p1, Lo;->c:Lo;

    const-string p2, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u100c\u0000"

    .line 7
    invoke-static {p1, p2, p0}, Lo;->a(Leh;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_39
    if-nez p2, :cond_3c

    goto :goto_3d

    :cond_3c
    move v0, v1

    .line 5
    :goto_3d
    iput-byte v0, p0, Lo;->e:B

    const/4 p0, 0x0

    return-object p0

    :cond_41
    iget-byte p0, p0, Lo;->e:B

    .line 8
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method
