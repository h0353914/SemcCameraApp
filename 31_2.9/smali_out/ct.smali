.class final Lct;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lej;

.field private static final b:Lej;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Lej;

    const/4 v1, 0x0

    .line 1
    invoke-direct {v0, v1}, Lej;-><init>([B)V

    sput-object v0, Lct;->a:Lej;

    :try_start_8
    const-string v0, "com.google.protobuf.ExtensionSchemaFull"

    .line 2
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    .line 3
    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lej;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_1d} :catch_1e

    goto :goto_1f

    :catch_1e
    move-object v0, v1

    :goto_1f
    sput-object v0, Lct;->b:Lej;

    return-void
.end method

.method static a()Lej;
    .registers 2

    sget-object v0, Lct;->b:Lej;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Protobuf runtime is not correctly loaded."

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
