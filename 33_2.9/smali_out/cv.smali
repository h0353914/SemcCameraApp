.class final enum Lcv;
.super Ljava/lang/Enum;
.source "PG"


# static fields
.field public static final enum a:Lcv;

.field public static final enum b:Lcv;

.field public static final enum c:Lcv;

.field public static final enum d:Lcv;

.field private static final synthetic f:[Lcv;


# instance fields
.field public final e:Z


# direct methods
.method static constructor <clinit>()V
    .registers 9

    new-instance v0, Lcv;

    const-string v1, "SCALAR"

    const/4 v2, 0x0

    .line 1
    invoke-direct {v0, v1, v2, v2}, Lcv;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcv;->a:Lcv;

    new-instance v1, Lcv;

    const-string v3, "VECTOR"

    const/4 v4, 0x1

    .line 2
    invoke-direct {v1, v3, v4, v4}, Lcv;-><init>(Ljava/lang/String;IZ)V

    sput-object v1, Lcv;->b:Lcv;

    new-instance v3, Lcv;

    const-string v5, "PACKED_VECTOR"

    const/4 v6, 0x2

    .line 3
    invoke-direct {v3, v5, v6, v4}, Lcv;-><init>(Ljava/lang/String;IZ)V

    sput-object v3, Lcv;->c:Lcv;

    new-instance v5, Lcv;

    const-string v7, "MAP"

    const/4 v8, 0x3

    .line 4
    invoke-direct {v5, v7, v8, v2}, Lcv;-><init>(Ljava/lang/String;IZ)V

    sput-object v5, Lcv;->d:Lcv;

    const/4 v7, 0x4

    new-array v7, v7, [Lcv;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcv;->f:[Lcv;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .registers 4

    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Lcv;->e:Z

    return-void
.end method

.method public static values()[Lcv;
    .registers 1

    sget-object v0, Lcv;->f:[Lcv;

    .line 6
    invoke-virtual {v0}, [Lcv;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcv;

    return-object v0
.end method
