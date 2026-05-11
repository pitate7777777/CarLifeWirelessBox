.class public final synthetic Le/b/a/a/p/o/d/b;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ConnectionInfoListener;


# instance fields
.field public final synthetic a:Le/b/a/a/p/o/d/j;


# direct methods
.method public synthetic constructor <init>(Le/b/a/a/p/o/d/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/b/a/a/p/o/d/b;->a:Le/b/a/a/p/o/d/j;

    return-void
.end method


# virtual methods
.method public final onConnectionInfoAvailable(Landroid/net/wifi/p2p/WifiP2pInfo;)V
    .locals 1

    iget-object v0, p0, Le/b/a/a/p/o/d/b;->a:Le/b/a/a/p/o/d/j;

    invoke-static {v0, p1}, Le/b/a/a/p/o/d/j;->a(Le/b/a/a/p/o/d/j;Landroid/net/wifi/p2p/WifiP2pInfo;)V

    return-void
.end method
