.class public final Lcom/baidu/carlife/sdk/sender/CarLifeSenderService$e;
.super Lf/m/b/d;
.source ""

# interfaces
.implements Lf/m/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/carlife/sdk/sender/CarLifeSenderService;->onConnectionDetached(Le/b/a/a/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lf/m/b/d;",
        "Lf/m/a/b<",
        "Le/b/a/a/q/d/b;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field public static final e:Lcom/baidu/carlife/sdk/sender/CarLifeSenderService$e;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/baidu/carlife/sdk/sender/CarLifeSenderService$e;

    invoke-direct {v0}, Lcom/baidu/carlife/sdk/sender/CarLifeSenderService$e;-><init>()V

    sput-object v0, Lcom/baidu/carlife/sdk/sender/CarLifeSenderService$e;->e:Lcom/baidu/carlife/sdk/sender/CarLifeSenderService$e;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lf/m/b/d;-><init>(I)V

    return-void
.end method


# virtual methods
.method public g(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Le/b/a/a/q/d/b;

    const-string v0, "it"

    .line 1
    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Le/b/a/a/q/d/b;->e()V

    .line 2
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method
