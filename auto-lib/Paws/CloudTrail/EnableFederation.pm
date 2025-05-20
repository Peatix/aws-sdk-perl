
package Paws::CloudTrail::EnableFederation;
  use Moose;
  has EventDataStore => (is => 'ro', isa => 'Str', required => 1);
  has FederationRoleArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'EnableFederation');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudTrail::EnableFederationResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudTrail::EnableFederation - Arguments for method EnableFederation on L<Paws::CloudTrail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method EnableFederation on the
L<AWS CloudTrail|Paws::CloudTrail> service. Use the attributes of this class
as arguments to method EnableFederation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to EnableFederation.

=head1 SYNOPSIS

    my $cloudtrail = Paws->service('CloudTrail');
    my $EnableFederationResponse = $cloudtrail->EnableFederation(
      EventDataStore    => 'MyEventDataStoreArn',
      FederationRoleArn => 'MyFederationRoleArn',

    );

    # Results:
    my $EventDataStoreArn = $EnableFederationResponse->EventDataStoreArn;
    my $FederationRoleArn = $EnableFederationResponse->FederationRoleArn;
    my $FederationStatus  = $EnableFederationResponse->FederationStatus;

    # Returns a L<Paws::CloudTrail::EnableFederationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudtrail/EnableFederation>

=head1 ATTRIBUTES


=head2 B<REQUIRED> EventDataStore => Str

The ARN (or ID suffix of the ARN) of the event data store for which you
want to enable Lake query federation.



=head2 B<REQUIRED> FederationRoleArn => Str

The ARN of the federation role to use for the event data store. Amazon
Web Services services like Lake Formation use this federation role to
access data for the federated event data store. The federation role
must exist in your account and provide the required minimum permissions
(https://docs.aws.amazon.com/awscloudtrail/latest/userguide/query-federation.html#query-federation-permissions-role).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method EnableFederation in L<Paws::CloudTrail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

