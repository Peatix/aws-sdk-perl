
package Paws::S3Tables::CreateNamespace;
  use Moose;
  has Namespace => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'namespace', required => 1);
  has TableBucketARN => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'tableBucketARN', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateNamespace');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/namespaces/{tableBucketARN}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::S3Tables::CreateNamespaceResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3Tables::CreateNamespace - Arguments for method CreateNamespace on L<Paws::S3Tables>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateNamespace on the
L<Amazon S3 Tables|Paws::S3Tables> service. Use the attributes of this class
as arguments to method CreateNamespace.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateNamespace.

=head1 SYNOPSIS

    my $s3tables = Paws->service('S3Tables');
    my $CreateNamespaceResponse = $s3tables->CreateNamespace(
      Namespace => [
        'MyNamespaceName', ...    # min: 1, max: 255
      ],
      TableBucketARN => 'MyTableBucketARN',

    );

    # Results:
    my $Namespace      = $CreateNamespaceResponse->Namespace;
    my $TableBucketARN = $CreateNamespaceResponse->TableBucketARN;

    # Returns a L<Paws::S3Tables::CreateNamespaceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/s3tables/CreateNamespace>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Namespace => ArrayRef[Str|Undef]

A name for the namespace.



=head2 B<REQUIRED> TableBucketARN => Str

The Amazon Resource Name (ARN) of the table bucket to create the
namespace in.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateNamespace in L<Paws::S3Tables>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

