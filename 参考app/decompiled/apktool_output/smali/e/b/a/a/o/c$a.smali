.class public final Le/b/a/a/o/c$a;
.super Lf/m/b/d;
.source ""

# interfaces
.implements Lf/m/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/b/a/a/o/c;-><init>(Landroid/content/Context;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lf/m/b/d;",
        "Lf/m/a/a<",
        "Landroid/content/SharedPreferences;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Le/b/a/a/o/c;


# direct methods
.method public constructor <init>(Le/b/a/a/o/c;)V
    .locals 0

    iput-object p1, p0, Le/b/a/a/o/c$a;->e:Le/b/a/a/o/c;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lf/m/b/d;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Le/b/a/a/o/c$a;->e:Le/b/a/a/o/c;

    .line 2
    iget-object v0, v0, Le/b/a/a/o/c;->e:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "CarLifeSDK"

    .line 3
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method
