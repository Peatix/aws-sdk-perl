
package Paws::CustomerProfiles::DeleteEventTrigger;
  use Moose;
  has DomainName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'DomainName', required => 1);
  has EventTriggerName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'EventTriggerName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteEventTrigger');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/domains/{DomainName}/event-triggers/{EventTriggerName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CustomerProfiles::DeleteEventTriggerResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CustomerProfiles::DeleteEventTrigger - Arguments for method DeleteEventTrigger on L<Paws::CustomerProfiles>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteEventTrigger on the
L<Amazon Connect Customer Profiles|Paws::CustomerProfiles> service. Use the attributes of this class
as arguments to method DeleteEventTrigger.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteEventTrigger.

=head1 SYNOPSIS

    my $profile = Paws->service('CustomerProfiles');
    my $DeleteEventTriggerResponse = $profile->DeleteEventTrigger(
      DomainName       => 'Myname',
      EventTriggerName => 'Myname',

    );

    # Results:
    my $Message = $DeleteEventTriggerResponse->Message;

    # Returns a L<Paws::CustomerProfiles::DeleteEventTriggerResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/profile/DeleteEventTrigger>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainName => Str

The unique name of the domain.



=head2 B<REQUIRED> EventTriggerName => Str

The unique name of the event trigger.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteEventTrigger in L<Paws::CustomerProfiles>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

