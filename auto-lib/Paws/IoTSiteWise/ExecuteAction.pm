
package Paws::IoTSiteWise::ExecuteAction;
  use Moose;
  has ActionDefinitionId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'actionDefinitionId', required => 1);
  has ActionPayload => (is => 'ro', isa => 'Paws::IoTSiteWise::ActionPayload', traits => ['NameInRequest'], request_name => 'actionPayload', required => 1);
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has TargetResource => (is => 'ro', isa => 'Paws::IoTSiteWise::TargetResource', traits => ['NameInRequest'], request_name => 'targetResource', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ExecuteAction');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/actions');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTSiteWise::ExecuteActionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTSiteWise::ExecuteAction - Arguments for method ExecuteAction on L<Paws::IoTSiteWise>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ExecuteAction on the
L<AWS IoT SiteWise|Paws::IoTSiteWise> service. Use the attributes of this class
as arguments to method ExecuteAction.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ExecuteAction.

=head1 SYNOPSIS

    my $iotsitewise = Paws->service('IoTSiteWise');
    my $ExecuteActionResponse = $iotsitewise->ExecuteAction(
      ActionDefinitionId => 'MyID',
      ActionPayload      => {
        StringValue => 'MyActionPayloadString',

      },
      TargetResource => {
        AssetId => 'MyCustomID',    # min: 13, max: 139

      },
      ClientToken => 'MyClientToken',    # OPTIONAL
    );

    # Results:
    my $ActionId = $ExecuteActionResponse->ActionId;

    # Returns a L<Paws::IoTSiteWise::ExecuteActionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iotsitewise/ExecuteAction>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ActionDefinitionId => Str

The ID of the action definition.



=head2 B<REQUIRED> ActionPayload => L<Paws::IoTSiteWise::ActionPayload>

The JSON payload of the action.



=head2 ClientToken => Str

A unique case-sensitive identifier that you can provide to ensure the
idempotency of the request. Don't reuse this client token if a new
idempotent request is required.



=head2 B<REQUIRED> TargetResource => L<Paws::IoTSiteWise::TargetResource>

The resource the action will be taken on.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ExecuteAction in L<Paws::IoTSiteWise>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

