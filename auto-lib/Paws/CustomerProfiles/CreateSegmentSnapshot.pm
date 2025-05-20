
package Paws::CustomerProfiles::CreateSegmentSnapshot;
  use Moose;
  has DataFormat => (is => 'ro', isa => 'Str', required => 1);
  has DestinationUri => (is => 'ro', isa => 'Str');
  has DomainName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'DomainName', required => 1);
  has EncryptionKey => (is => 'ro', isa => 'Str');
  has RoleArn => (is => 'ro', isa => 'Str');
  has SegmentDefinitionName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'SegmentDefinitionName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateSegmentSnapshot');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/domains/{DomainName}/segments/{SegmentDefinitionName}/snapshots');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CustomerProfiles::CreateSegmentSnapshotResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CustomerProfiles::CreateSegmentSnapshot - Arguments for method CreateSegmentSnapshot on L<Paws::CustomerProfiles>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateSegmentSnapshot on the
L<Amazon Connect Customer Profiles|Paws::CustomerProfiles> service. Use the attributes of this class
as arguments to method CreateSegmentSnapshot.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateSegmentSnapshot.

=head1 SYNOPSIS

    my $profile = Paws->service('CustomerProfiles');
    my $CreateSegmentSnapshotResponse = $profile->CreateSegmentSnapshot(
      DataFormat            => 'CSV',
      DomainName            => 'Myname',
      SegmentDefinitionName => 'Myname',
      DestinationUri        => 'Mystring1To255',     # OPTIONAL
      EncryptionKey         => 'MyencryptionKey',    # OPTIONAL
      RoleArn               => 'MyRoleArn',          # OPTIONAL
    );

    # Results:
    my $SnapshotId = $CreateSegmentSnapshotResponse->SnapshotId;

    # Returns a L<Paws::CustomerProfiles::CreateSegmentSnapshotResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/profile/CreateSegmentSnapshot>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DataFormat => Str

The format in which the segment will be exported.

Valid values are: C<"CSV">, C<"JSONL">, C<"ORC">

=head2 DestinationUri => Str

The destination to which the segment will be exported. This field must
be provided if the request is not submitted from the Amazon Connect
Admin Website.



=head2 B<REQUIRED> DomainName => Str

The unique name of the domain.



=head2 EncryptionKey => Str

The Amazon Resource Name (ARN) of the KMS key used to encrypt the
exported segment.



=head2 RoleArn => Str

The Amazon Resource Name (ARN) of the IAM role that allows Customer
Profiles service principal to assume the role for conducting KMS and S3
operations.



=head2 B<REQUIRED> SegmentDefinitionName => Str

The name of the segment definition used in this snapshot request.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateSegmentSnapshot in L<Paws::CustomerProfiles>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

