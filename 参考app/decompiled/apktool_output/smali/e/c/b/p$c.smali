.class public Le/c/b/p$c;
.super Le/c/b/b;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/c/b/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Le/c/b/p<",
        "TT;*>;>",
        "Le/c/b/b<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public a:Le/c/b/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/c/b/p;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Le/c/b/b;-><init>()V

    iput-object p1, p0, Le/c/b/p$c;->a:Le/c/b/p;

    return-void
.end method


# virtual methods
.method public a(Le/c/b/h;Le/c/b/m;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Le/c/b/p$c;->a:Le/c/b/p;

    invoke-static {v0, p1, p2}, Le/c/b/p;->parsePartialFrom(Le/c/b/p;Le/c/b/h;Le/c/b/m;)Le/c/b/p;

    move-result-object p1

    return-object p1
.end method
