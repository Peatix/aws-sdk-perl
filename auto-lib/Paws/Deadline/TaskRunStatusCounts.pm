package Paws::Deadline::TaskRunStatusCounts;
  use Moose;
  with 'Paws::API::MapParser';

  use MooseX::ClassAttribute;
  class_has xml_keys =>(is => 'ro', default => 'key');
  class_has xml_values =>(is => 'ro', default => 'value');

  has ASSIGNED => (is => 'ro', isa => 'Int');
  has CANCELED => (is => 'ro', isa => 'Int');
  has FAILED => (is => 'ro', isa => 'Int');
  has INTERRUPTING => (is => 'ro', isa => 'Int');
  has NOT_COMPATIBLE => (is => 'ro', isa => 'Int');
  has PENDING => (is => 'ro', isa => 'Int');
  has READY => (is => 'ro', isa => 'Int');
  has RUNNING => (is => 'ro', isa => 'Int');
  has SCHEDULED => (is => 'ro', isa => 'Int');
  has STARTING => (is => 'ro', isa => 'Int');
  has SUCCEEDED => (is => 'ro', isa => 'Int');
  has SUSPENDED => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Deadline::TaskRunStatusCounts

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Deadline::TaskRunStatusCounts object:

  $service_obj->Method(Att1 => { ASSIGNED => $value, ..., SUSPENDED => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Deadline::TaskRunStatusCounts object:

  $result = $service_obj->Method(...);
  $result->Att1->ASSIGNED

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 ASSIGNED => Int


=head2 CANCELED => Int


=head2 FAILED => Int


=head2 INTERRUPTING => Int


=head2 NOT_COMPATIBLE => Int


=head2 PENDING => Int


=head2 READY => Int


=head2 RUNNING => Int


=head2 SCHEDULED => Int


=head2 STARTING => Int


=head2 SUCCEEDED => Int


=head2 SUSPENDED => Int



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Deadline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

