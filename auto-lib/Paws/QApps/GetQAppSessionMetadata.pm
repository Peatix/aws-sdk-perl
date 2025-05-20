
package Paws::QApps::GetQAppSessionMetadata;
  use Moose;
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'instance-id', required => 1);
  has SessionId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'sessionId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetQAppSessionMetadata');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/runtime.getQAppSessionMetadata');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::QApps::GetQAppSessionMetadataOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QApps::GetQAppSessionMetadata - Arguments for method GetQAppSessionMetadata on L<Paws::QApps>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetQAppSessionMetadata on the
L<QApps|Paws::QApps> service. Use the attributes of this class
as arguments to method GetQAppSessionMetadata.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetQAppSessionMetadata.

=head1 SYNOPSIS

    my $data.qapps = Paws->service('QApps');
    my $GetQAppSessionMetadataOutput = $data . qapps->GetQAppSessionMetadata(
      InstanceId => 'MyInstanceId',
      SessionId  => 'MyUUID',

    );

    # Results:
    my $SessionArn   = $GetQAppSessionMetadataOutput->SessionArn;
    my $SessionId    = $GetQAppSessionMetadataOutput->SessionId;
    my $SessionName  = $GetQAppSessionMetadataOutput->SessionName;
    my $SessionOwner = $GetQAppSessionMetadataOutput->SessionOwner;
    my $SharingConfiguration =
      $GetQAppSessionMetadataOutput->SharingConfiguration;

    # Returns a L<Paws::QApps::GetQAppSessionMetadataOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/data.qapps/GetQAppSessionMetadata>

=head1 ATTRIBUTES


=head2 B<REQUIRED> InstanceId => Str

The unique identifier of the Amazon Q Business application environment
instance.



=head2 B<REQUIRED> SessionId => Str

The unique identifier of the Q App session.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetQAppSessionMetadata in L<Paws::QApps>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

