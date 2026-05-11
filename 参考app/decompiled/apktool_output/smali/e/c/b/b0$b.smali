.class public Le/c/b/b0$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/c/b/b0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field public static final a:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Le/c/b/b0$b$a;

    invoke-direct {v0}, Le/c/b/b0$b$a;-><init>()V

    sput-object v0, Le/c/b/b0$b;->a:Ljava/util/Iterator;

    new-instance v0, Le/c/b/b0$b$b;

    invoke-direct {v0}, Le/c/b/b0$b$b;-><init>()V

    sput-object v0, Le/c/b/b0$b;->b:Ljava/lang/Iterable;

    return-void
.end method
