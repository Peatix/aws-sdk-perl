package Paws::EC2::AccessScopePathRequest;
  use Moose;
  has Destination => (is => 'ro', isa => 'Paws::EC2::PathStatementRequest');
  has Source => (is => 'ro', isa => 'Paws::EC2::PathStatementRequest');
  has ThroughResources => (is => 'ro', isa => 'ArrayRef[Paws::EC2::ThroughResourcesStatementRequest]', request_name => 'ThroughResource', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::AccessScopePathRequest

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::AccessScopePathRequest object:

  $service_obj->Method(Att1 => { Destination => $value, ..., ThroughResources => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::AccessScopePathRequest object:

  $result = $service_obj->Method(...);
  $result->Att1->Destination

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 Destination => L<Paws::EC2::PathStatementRequest>

The destination.


=head2 Source => L<Paws::EC2::PathStatementRequest>

The source.


=head2 ThroughResources => ArrayRef[L<Paws::EC2::ThroughResourcesStatementRequest>]

The through resources.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
