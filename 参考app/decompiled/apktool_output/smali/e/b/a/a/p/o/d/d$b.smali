.class public final Le/b/a/a/p/o/d/d$b;
.super Lf/m/b/d;
.source ""

# interfaces
.implements Lf/m/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/b/a/a/p/o/d/d;-><init>(Le/b/a/a/c;Le/b/a/a/p/o/d/d$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lf/m/b/d;",
        "Lf/m/a/a<",
        "Landroid/bluetooth/BluetoothAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Le/b/a/a/p/o/d/d;


# direct methods
.method public constructor <init>(Le/b/a/a/p/o/d/d;)V
    .locals 0

    iput-object p1, p0, Le/b/a/a/p/o/d/d$b;->e:Le/b/a/a/p/o/d/d;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lf/m/b/d;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Le/b/a/a/p/o/d/d$b;->e:Le/b/a/a/p/o/d/d;

    .line 2
    iget-object v0, v0, Le/b/a/a/p/o/d/d;->e:Le/b/a/a/c;

    .line 3
    invoke-interface {v0}, Le/b/a/a/c;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "bluetooth"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type android.bluetooth.BluetoothManager"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
