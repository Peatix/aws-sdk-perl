package Paws::EC2::OperatorResponse;
  use Moose;
  has Managed => (is => 'ro', isa => 'Bool', request_name => 'managed', traits => ['NameInRequest']);
  has Principal => (is => 'ro', isa => 'Str', request_name => 'principal', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::OperatorResponse

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::OperatorResponse object:

  $service_obj->Method(Att1 => { Managed => $value, ..., Principal => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::OperatorResponse object:

  $result = $service_obj->Method(...);
  $result->Att1->Managed

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 Managed => Bool

If C<true>, the resource is managed by a service provider.


=head2 Principal => Str

If C<managed> is C<true>, then the principal is returned. The principal
is the service provider that manages the resource.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
