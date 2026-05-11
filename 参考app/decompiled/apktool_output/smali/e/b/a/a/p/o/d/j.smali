.class public final Le/b/a/a/p/o/d/j;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/b/a/a/p/o/d/j$b;
    }
.end annotation


# instance fields
.field public final a:Le/b/a/a/c;

.field public final b:Le/b/a/a/p/o/d/j$b;

.field public final c:Landroid/net/wifi/p2p/WifiP2pManager;

.field public d:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

.field public final e:Le/b/a/a/p/o/d/i;

.field public f:Z


# direct methods
.method public constructor <init>(Le/b/a/a/c;Le/b/a/a/p/o/d/j$b;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callbacks"

    invoke-static {p2, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Le/b/a/a/p/o/d/j;->a:Le/b/a/a/c;

    iput-object p2, p0, Le/b/a/a/p/o/d/j;->b:Le/b/a/a/p/o/d/j$b;

    invoke-interface {p1}, Le/b/a/a/c;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "wifip2p"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    check-cast p2, Landroid/net/wifi/p2p/WifiP2pManager;

    iput-object p2, p0, Le/b/a/a/p/o/d/j;->c:Landroid/net/wifi/p2p/WifiP2pManager;

    invoke-interface {p1}, Le/b/a/a/c;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Le/b/a/a/p/o/d/j$a;

    invoke-direct {v2, p0}, Le/b/a/a/p/o/d/j$a;-><init>(Le/b/a/a/p/o/d/j;)V

    invoke-virtual {p2, v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v0

    const-string v1, "wifiP2pManager.initialize(\n            context.applicationContext,\n            Looper.getMainLooper(),\n            object : WifiP2pManager.ChannelListener {\n                override fun onChannelDisconnected() {\n                    // \u5982\u679cchannel\u51fa\u73b0\u5f02\u5e38\u7684\u8bdd\uff0c\u9700\u8981\u91cd\u65b0\u521d\u59cb\u5316\n                    channel = wifiP2pManager.initialize(\n                        context.applicationContext,\n                        Looper.getMainLooper(),\n                        this\n                    )\n                }\n            })"

    invoke-static {v0, v1}, Lf/m/b/c;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Le/b/a/a/p/o/d/j;->d:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v1, Le/b/a/a/p/o/d/i;

    invoke-direct {v1, p2, v0}, Le/b/a/a/p/o/d/i;-><init>(Landroid/net/wifi/p2p/WifiP2pManager;Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    iput-object v1, p0, Le/b/a/a/p/o/d/j;->e:Le/b/a/a/p/o/d/i;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.p2p.PEERS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.p2p.THIS_DEVICE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-interface {p1}, Le/b/a/a/c;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object p1, p0, Le/b/a/a/p/o/d/j;->d:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v0, Le/b/a/a/p/o/d/b;

    invoke-direct {v0, p0}, Le/b/a/a/p/o/d/b;-><init>(Le/b/a/a/p/o/d/j;)V

    invoke-virtual {p2, p1, v0}, Landroid/net/wifi/p2p/WifiP2pManager;->requestConnectionInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ConnectionInfoListener;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type android.net.wifi.p2p.WifiP2pManager"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final a(Le/b/a/a/p/o/d/j;Landroid/net/wifi/p2p/WifiP2pInfo;)V
    .locals 5

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "requestConnectionInfo "

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const-string v2, "CarLife_SDK"

    const-string v3, "tag"

    .line 1
    invoke-static {v2, v3}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "args"

    invoke-static {v0, v3}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v3, Le/b/a/a/r/g;->h:Le/b/a/a/r/g;

    if-nez v3, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    array-length v4, v0

    invoke-static {v0, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const/4 v4, 0x3

    invoke-virtual {v3, v4, v2, v0}, Le/b/a/a/r/g;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    if-eqz p1, :cond_1

    .line 4
    iget-boolean p1, p1, Landroid/net/wifi/p2p/WifiP2pInfo;->groupFormed:Z

    if-eqz p1, :cond_1

    iput-boolean v1, p0, Le/b/a/a/p/o/d/j;->f:Z

    :cond_1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    const-string v0, "context1"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "intent"

    invoke-static {p2, p1}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x2

    new-array v0, p1, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "onReceive intent.action: "

    aput-object v2, v0, v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v0, v3

    const-string v2, "CarLife_SDK"

    const-string v4, "tag"

    .line 1
    invoke-static {v2, v4}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "args"

    invoke-static {v0, v5}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v6, Le/b/a/a/r/g;->h:Le/b/a/a/r/g;

    const/4 v7, 0x3

    if-nez v6, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v6, v7, v2, v0}, Le/b/a/a/r/g;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 4
    :goto_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v6, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-static {v0, v6}, Lf/m/b/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    const-string v0, "wifiP2pInfo"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    instance-of v6, v0, Landroid/net/wifi/p2p/WifiP2pInfo;

    const/4 v8, 0x0

    if-eqz v6, :cond_1

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pInfo;

    goto :goto_1

    :cond_1
    move-object v0, v8

    :goto_1
    new-array v6, v3, [Ljava/lang/Object;

    const-string v9, "WIFI_P2P_CONNECTION_CHANGED_ACTION info: "

    invoke-static {v9, v0}, Lf/m/b/c;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v1

    .line 5
    invoke-static {v2, v4}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6, v5}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    sget-object v9, Le/b/a/a/r/g;->h:Le/b/a/a/r/g;

    if-nez v9, :cond_2

    goto :goto_2

    .line 7
    :cond_2
    invoke-static {v6, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v9, v7, v2, v6}, Le/b/a/a/r/g;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_2
    if-eqz v0, :cond_7

    .line 8
    iget-boolean v6, v0, Landroid/net/wifi/p2p/WifiP2pInfo;->groupFormed:Z

    if-eqz v6, :cond_7

    iput-boolean v3, p0, Le/b/a/a/p/o/d/j;->f:Z

    iget-object v6, p0, Le/b/a/a/p/o/d/j;->b:Le/b/a/a/p/o/d/j$b;

    check-cast v6, Le/b/a/a/p/o/d/e;

    if-eqz v6, :cond_6

    const-string v9, "info"

    .line 9
    invoke-static {v0, v9}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v6, Le/b/a/a/p/o/d/e;->f:Le/b/a/a/o/i/f/a;

    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v6, v0}, Le/b/a/a/p/o/d/e;->c(Le/b/a/a/o/i/f/a;)V

    :goto_3
    const-string v0, "p2pGroupInfo"

    .line 10
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    instance-of v0, p2, Landroid/net/wifi/p2p/WifiP2pGroup;

    if-eqz v0, :cond_4

    move-object v8, p2

    check-cast v8, Landroid/net/wifi/p2p/WifiP2pGroup;

    :cond_4
    if-eqz v8, :cond_8

    new-array p2, p1, [Ljava/lang/Object;

    const-string v0, "WifiDirectManager group: "

    aput-object v0, p2, v1

    aput-object v8, p2, v3

    .line 11
    invoke-static {v2, v4}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v5}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    sget-object v0, Le/b/a/a/r/g;->h:Le/b/a/a/r/g;

    if-nez v0, :cond_5

    goto :goto_4

    .line 13
    :cond_5
    invoke-static {p2, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, v7, v2, p2}, Le/b/a/a/r/g;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    .line 14
    :cond_6
    throw v8

    .line 15
    :cond_7
    iput-boolean v1, p0, Le/b/a/a/p/o/d/j;->f:Z

    iget-object p2, p0, Le/b/a/a/p/o/d/j;->a:Le/b/a/a/c;

    invoke-interface {p2}, Le/b/a/a/c;->p0()I

    move-result p2

    const/16 v0, 0x9

    if-ne p2, v0, :cond_8

    iget-object p2, p0, Le/b/a/a/p/o/d/j;->e:Le/b/a/a/p/o/d/i;

    .line 16
    iget-object p2, p2, Le/b/a/a/p/o/d/i;->c:Le/b/a/a/r/i/b;

    invoke-virtual {p2}, Le/b/a/a/r/i/b;->a()V

    :cond_8
    :goto_4
    new-array p2, p1, [Ljava/lang/Object;

    const-string v0, "WIFI_P2P_CONNECTION_CHANGED_ACTION "

    aput-object v0, p2, v1

    .line 17
    iget-boolean v0, p0, Le/b/a/a/p/o/d/j;->f:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, p2, v3

    .line 18
    invoke-static {v2, v4}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v5}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    sget-object v0, Le/b/a/a/r/g;->h:Le/b/a/a/r/g;

    if-nez v0, :cond_9

    goto :goto_5

    .line 20
    :cond_9
    invoke-static {p2, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v7, v2, p1}, Le/b/a/a/r/g;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5

    :cond_a
    const-string v2, "android.net.wifi.p2p.STATE_CHANGED"

    .line 21
    invoke-static {v0, v2}, Lf/m/b/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "wifi_p2p_state"

    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    if-eq p2, p1, :cond_b

    iput-boolean v1, p0, Le/b/a/a/p/o/d/j;->f:Z

    :cond_b
    :goto_5
    return-void
.end method
