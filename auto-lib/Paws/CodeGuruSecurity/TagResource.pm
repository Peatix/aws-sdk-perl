
package Paws::CodeGuruSecurity::TagResource;
  use Moose;
  has ResourceArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'resourceArn', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::CodeGuruSecurity::TagMap', traits => ['NameInRequest'], request_name => 'tags', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'TagResource');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/tags/{resourceArn}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeGuruSecurity::TagResourceResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeGuruSecurity::TagResource - Arguments for method TagResource on L<Paws::CodeGuruSecurity>

=head1 DESCRIPTION

This class represents the parameters used for calling the method TagResource on the
L<Amazon CodeGuru Security|Paws::CodeGuruSecurity> service. Use the attributes of this class
as arguments to method TagResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to TagResource.

=head1 SYNOPSIS

    my $codeguru-security = Paws->service('CodeGuruSecurity');
    my $TagResourceResponse = $codeguru -security->TagResource(
      ResourceArn => 'MyScanNameArn',
      Tags        => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codeguru-security/TagResource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceArn => Str

The ARN of the C<ScanName> object. You can retrieve this ARN by calling
C<CreateScan>, C<ListScans>, or C<GetScan>.



=head2 B<REQUIRED> Tags => L<Paws::CodeGuruSecurity::TagMap>

An array of key-value pairs used to tag an existing scan. A tag is a
custom attribute label with two parts:

=over

=item *

A tag key. For example, C<CostCenter>, C<Environment>, or C<Secret>.
Tag keys are case sensitive.

=item *

An optional tag value field. For example, C<111122223333>,
C<Production>, or a team name. Omitting the tag value is the same as
using an empty string. Tag values are case sensitive.

=back





=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method TagResource in L<Paws::CodeGuruSecurity>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

