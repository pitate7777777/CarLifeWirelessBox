.class public final Le/b/a/a/r/i/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;


# instance fields
.field public final a:Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/b/a/a/r/i/a;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public d:I


# direct methods
.method public constructor <init>(Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/b/a/a/r/i/b;->a:Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Le/b/a/a/r/i/b;->b:Ljava/util/List;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Le/b/a/a/r/i/b;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Le/b/a/a/r/i/b;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Le/b/a/a/r/i/b;->d:I

    iget-object v1, p0, Le/b/a/a/r/i/b;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/b/a/a/r/i/a;

    invoke-interface {v0, p0}, Le/b/a/a/r/i/a;->a(Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    :cond_0
    return-void
.end method

.method public onFailure(I)V
    .locals 6

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "WifiP2pOperationSequence onFailure "

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Le/b/a/a/r/i/b;->b:Ljava/util/List;

    iget v3, p0, Le/b/a/a/r/i/b;->d:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v3, ", currentIndex: "

    aput-object v3, v0, v1

    iget v1, p0, Le/b/a/a/r/i/b;->d:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x3

    aput-object v1, v0, v3

    const/4 v1, 0x4

    const-string v4, ", reason: "

    aput-object v4, v0, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x5

    aput-object v1, v0, v4

    const-string v1, "CarLife_SDK"

    const-string v4, "tag"

    .line 1
    invoke-static {v1, v4}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "args"

    invoke-static {v0, v4}, Lf/m/b/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v4, Le/b/a/a/r/g;->h:Le/b/a/a/r/g;

    if-nez v4, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    array-length v5, v0

    invoke-static {v0, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v3, v1, v0}, Le/b/a/a/r/g;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 4
    :goto_0
    iget-object v0, p0, Le/b/a/a/r/i/b;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Le/b/a/a/r/i/b;->a:Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    invoke-interface {v0, p1}, Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;->onFailure(I)V

    iput v2, p0, Le/b/a/a/r/i/b;->d:I

    return-void
.end method

.method public onSuccess()V
    .locals 2

    iget v0, p0, Le/b/a/a/r/i/b;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Le/b/a/a/r/i/b;->d:I

    iget-object v1, p0, Le/b/a/a/r/i/b;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Le/b/a/a/r/i/b;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iput v1, p0, Le/b/a/a/r/i/b;->d:I

    iget-object v0, p0, Le/b/a/a/r/i/b;->a:Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    invoke-interface {v0}, Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;->onSuccess()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Le/b/a/a/r/i/b;->b:Ljava/util/List;

    iget v1, p0, Le/b/a/a/r/i/b;->d:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/b/a/a/r/i/a;

    invoke-interface {v0, p0}, Le/b/a/a/r/i/a;->a(Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    :goto_0
    return-void
.end method
