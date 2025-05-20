
package Paws::DataExchange::GetEventAction;
  use Moose;
  has EventActionId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'EventActionId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetEventAction');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/event-actions/{EventActionId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DataExchange::GetEventActionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataExchange::GetEventAction - Arguments for method GetEventAction on L<Paws::DataExchange>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetEventAction on the
L<AWS Data Exchange|Paws::DataExchange> service. Use the attributes of this class
as arguments to method GetEventAction.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetEventAction.

=head1 SYNOPSIS

    my $dataexchange = Paws->service('DataExchange');
    my $GetEventActionResponse = $dataexchange->GetEventAction(
      EventActionId => 'My__string',

    );

    # Results:
    my $Action    = $GetEventActionResponse->Action;
    my $Arn       = $GetEventActionResponse->Arn;
    my $CreatedAt = $GetEventActionResponse->CreatedAt;
    my $Event     = $GetEventActionResponse->Event;
    my $Id        = $GetEventActionResponse->Id;
    my $UpdatedAt = $GetEventActionResponse->UpdatedAt;

    # Returns a L<Paws::DataExchange::GetEventActionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/dataexchange/GetEventAction>

=head1 ATTRIBUTES


=head2 B<REQUIRED> EventActionId => Str

The unique identifier for the event action.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetEventAction in L<Paws::DataExchange>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

