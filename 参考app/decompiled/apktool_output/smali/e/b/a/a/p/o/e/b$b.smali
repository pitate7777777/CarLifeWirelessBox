.class public final Le/b/a/a/p/o/e/b$b;
.super Lf/m/b/d;
.source ""

# interfaces
.implements Lf/m/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/b/a/a/p/o/e/b;-><init>(Le/b/a/a/c;Le/b/a/a/o/i/e$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lf/m/b/d;",
        "Lf/m/a/a<",
        "Le/b/a/a/p/o/e/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final e:Le/b/a/a/p/o/e/b$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Le/b/a/a/p/o/e/b$b;

    invoke-direct {v0}, Le/b/a/a/p/o/e/b$b;-><init>()V

    sput-object v0, Le/b/a/a/p/o/e/b$b;->e:Le/b/a/a/p/o/e/b$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lf/m/b/d;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Le/b/a/a/p/o/e/c;

    invoke-direct {v0}, Le/b/a/a/p/o/e/c;-><init>()V

    return-object v0
.end method
