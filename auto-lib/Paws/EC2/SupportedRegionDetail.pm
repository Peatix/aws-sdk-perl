package Paws::EC2::SupportedRegionDetail;
  use Moose;
  has Region => (is => 'ro', isa => 'Str', request_name => 'region', traits => ['NameInRequest']);
  has ServiceState => (is => 'ro', isa => 'Str', request_name => 'serviceState', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::SupportedRegionDetail

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::SupportedRegionDetail object:

  $service_obj->Method(Att1 => { Region => $value, ..., ServiceState => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::SupportedRegionDetail object:

  $result = $service_obj->Method(...);
  $result->Att1->Region

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 Region => Str

The Region code.


=head2 ServiceState => Str

The service state. The possible values are C<Pending>, C<Available>,
C<Deleting>, C<Deleted>, C<Failed>, and C<Closed>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
