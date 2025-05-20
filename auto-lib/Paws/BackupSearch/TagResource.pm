
package Paws::BackupSearch::TagResource;
  use Moose;
  has ResourceArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ResourceArn', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::BackupSearch::TagMap', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'TagResource');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/tags/{ResourceArn}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::BackupSearch::TagResourceResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BackupSearch::TagResource - Arguments for method TagResource on L<Paws::BackupSearch>

=head1 DESCRIPTION

This class represents the parameters used for calling the method TagResource on the
L<AWS Backup Search|Paws::BackupSearch> service. Use the attributes of this class
as arguments to method TagResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to TagResource.

=head1 SYNOPSIS

    my $backup-search = Paws->service('BackupSearch');
    my $TagResourceResponse = $backup -search->TagResource(
      ResourceArn => 'MyString',
      Tags        => { 'MyString' => 'MyString', },

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/backup-search/TagResource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceArn => Str

The Amazon Resource Name (ARN) that uniquely identifies the resource.

This is the resource that will have the indicated tags.



=head2 B<REQUIRED> Tags => L<Paws::BackupSearch::TagMap>

Required tags to include. A tag is a key-value pair you can use to
manage, filter, and search for your resources. Allowed characters
include UTF-8 letters, numbers, spaces, and the following characters: +
- = . _ : /.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method TagResource in L<Paws::BackupSearch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

