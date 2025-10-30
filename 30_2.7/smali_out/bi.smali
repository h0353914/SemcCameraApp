.class public final Lbi;
.super Lde;
.source "PG"

# interfaces
.implements Lei;


# static fields
.field public static final f:Lbi;


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:I

.field public e:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lbi;

    .line 1
    invoke-direct {v0}, Lbi;-><init>()V

    sput-object v0, Lbi;->f:Lbi;

    const-class v1, Lbi;

    .line 2
    invoke-static {v1, v0}, Lde;->a(Ljava/lang/Class;Lde;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 3
    invoke-direct {p0}, Lde;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lbi;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lbi;->c:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lbi;->d:I

    iput v0, p0, Lbi;->e:I

    return-void
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 5

    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x1

    packed-switch p1, :pswitch_data_4e

    sget-object p1, Lbi;->f:Lbi;

    return-object p1

    .line 8
    :pswitch_9
    new-instance p1, Lbf;

    .line 4
    invoke-direct {p1}, Lbf;-><init>()V

    return-object p1

    :pswitch_f
    new-instance p1, Lbi;

    .line 5
    invoke-direct {p1}, Lbi;-><init>()V

    return-object p1

    :pswitch_15
    const/4 p1, 0x7

    .line 0
    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "a"

    aput-object v1, p1, v0

    const-string v0, "b"

    aput-object v0, p1, p2

    const/4 p2, 0x2

    const-string v0, "c"

    aput-object v0, p1, p2

    const/4 p2, 0x3

    const-string v0, "d"

    aput-object v0, p1, p2

    const/4 p2, 0x4

    .line 6
    invoke-static {}, Lbh;->a()Ldh;

    move-result-object v0

    aput-object v0, p1, p2

    const/4 p2, 0x5

    const-string v0, "e"

    aput-object v0, p1, p2

    const/4 p2, 0x6

    .line 7
    invoke-static {}, Lbh;->a()Ldh;

    move-result-object v0

    aput-object v0, p1, p2

    sget-object p2, Lbi;->f:Lbi;

    const-string v0, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u1008\u0000\u0002\u1008\u0001\u0003\u100c\u0002\u0004\u100c\u0003"

    .line 8
    invoke-static {p2, v0, p1}, Lbi;->a(Leh;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_47
    const/4 p1, 0x0

    return-object p1

    .line 9
    :pswitch_49
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :pswitch_data_4e
    .packed-switch 0x0
        :pswitch_49
        :pswitch_47
        :pswitch_15
        :pswitch_f
        :pswitch_9
    .end packed-switch
.end method
