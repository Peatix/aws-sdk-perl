package Paws::EKS::TagMap;
  use Moose;
  with 'Paws::API::StrToNativeMapParser';

  has Map => (is => 'ro', isa => 'HashRef[Maybe[Str]]');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EKS::TagMap

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EKS::TagMap object:

  $service_obj->Method(Att1 => { key1 => $value, ..., keyN => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EKS::TagMap object:

  $result = $service_obj->Method(...);
  $result->Att1->Map->{ key1 }

=head1 DESCRIPTION

The metadata that you apply to a resource to help you categorize and
organize them. Each tag consists of a key and an optional value. You
define them.

The following basic restrictions apply to tags:

=over

=item *

Maximum number of tags per resource E<ndash> 50

=item *

For each resource, each tag key must be unique, and each tag key can
have only one value.

=item *

Maximum key length E<ndash> 128 Unicode characters in UTF-8

=item *

Maximum value length E<ndash> 256 Unicode characters in UTF-8

=item *

If your tagging schema is used across multiple services and resources,
remember that other services may have restrictions on allowed
characters. Generally allowed characters are: letters, numbers, and
spaces representable in UTF-8, and the following characters: + - = . _
: / @.

=item *

Tag keys and values are case-sensitive.

=item *

Do not use C<aws:>, C<AWS:>, or any upper or lowercase combination of
such as a prefix for either keys or values as it is reserved for Amazon
Web Services use. You cannot edit or delete tag keys or values with
this prefix. Tags with this prefix do not count against your tags per
resource limit.

=back


=head1 ATTRIBUTES

=head2 Map => Str

Use the Map method to retrieve a HashRef to the map

=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EKS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

