package Paws::OpenSearch::AdvancedOptions;
  use Moose;
  with 'Paws::API::StrToNativeMapParser';

  has Map => (is => 'ro', isa => 'HashRef[Maybe[Str]]');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpenSearch::AdvancedOptions

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::OpenSearch::AdvancedOptions object:

  $service_obj->Method(Att1 => { key1 => $value, ..., keyN => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::OpenSearch::AdvancedOptions object:

  $result = $service_obj->Method(...);
  $result->Att1->Map->{ key1 }

=head1 DESCRIPTION

Exposes native OpenSearch configuration values from C<opensearch.yml>.
The following advanced options are available:

=over

=item *

Allows references to indexes in an HTTP request body. Must be C<false>
when configuring access to individual sub-resources. Default is
C<true>.

=item *

Specifies the percentage of heap space allocated to field data. Default
is unbounded.

=back

For more information, see Advanced cluster parameters
(https://docs.aws.amazon.com/opensearch-service/latest/developerguide/createupdatedomains.html#createdomain-configure-advanced-options).

=head1 ATTRIBUTES

=head2 Map => Str

Use the Map method to retrieve a HashRef to the map

=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::OpenSearch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

