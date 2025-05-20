
package Paws::Connect::BatchGetAttachedFileMetadata;
  use Moose;
  has AssociatedResourceArn => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'associatedResourceArn', required => 1);
  has FileIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'InstanceId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BatchGetAttachedFileMetadata');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/attached-files/{InstanceId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Connect::BatchGetAttachedFileMetadataResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::BatchGetAttachedFileMetadata - Arguments for method BatchGetAttachedFileMetadata on L<Paws::Connect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method BatchGetAttachedFileMetadata on the
L<Amazon Connect Service|Paws::Connect> service. Use the attributes of this class
as arguments to method BatchGetAttachedFileMetadata.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BatchGetAttachedFileMetadata.

=head1 SYNOPSIS

    my $connect = Paws->service('Connect');
    my $BatchGetAttachedFileMetadataResponse =
      $connect->BatchGetAttachedFileMetadata(
      AssociatedResourceArn => 'MyARN',
      FileIds               => [
        'MyFileId', ...    # min: 1, max: 256
      ],
      InstanceId => 'MyInstanceId',

      );

    # Results:
    my $Errors = $BatchGetAttachedFileMetadataResponse->Errors;
    my $Files  = $BatchGetAttachedFileMetadataResponse->Files;

    # Returns a L<Paws::Connect::BatchGetAttachedFileMetadataResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/connect/BatchGetAttachedFileMetadata>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AssociatedResourceArn => Str

The resource to which the attached file is (being) uploaded to. The
supported resources are Cases
(https://docs.aws.amazon.com/connect/latest/adminguide/cases.html) and
Email
(https://docs.aws.amazon.com/connect/latest/adminguide/setup-email-channel.html).

This value must be a valid ARN.



=head2 B<REQUIRED> FileIds => ArrayRef[Str|Undef]

The unique identifiers of the attached file resource.



=head2 B<REQUIRED> InstanceId => Str

The unique identifier of the Connect instance.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BatchGetAttachedFileMetadata in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

