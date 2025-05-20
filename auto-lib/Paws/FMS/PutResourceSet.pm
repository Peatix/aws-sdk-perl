
package Paws::FMS::PutResourceSet;
  use Moose;
  has ResourceSet => (is => 'ro', isa => 'Paws::FMS::ResourceSet', required => 1);
  has TagList => (is => 'ro', isa => 'ArrayRef[Paws::FMS::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutResourceSet');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::FMS::PutResourceSetResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FMS::PutResourceSet - Arguments for method PutResourceSet on L<Paws::FMS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutResourceSet on the
L<Firewall Management Service|Paws::FMS> service. Use the attributes of this class
as arguments to method PutResourceSet.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutResourceSet.

=head1 SYNOPSIS

    my $fms = Paws->service('FMS');
    my $PutResourceSetResponse = $fms->PutResourceSet(
      ResourceSet => {
        Name             => 'MyName',    # min: 1, max: 128
        ResourceTypeList => [
          'MyResourceType', ...          # min: 1, max: 128
        ],
        Description       => 'MyDescription',       # max: 256; OPTIONAL
        Id                => 'MyBase62Id',          # min: 22, max: 22; OPTIONAL
        LastUpdateTime    => '1970-01-01T01:00:00', # OPTIONAL
        ResourceSetStatus =>
          'ACTIVE',    # values: ACTIVE, OUT_OF_ADMIN_SCOPE; OPTIONAL
        UpdateToken => 'MyUpdateToken',    # min: 1, max: 1024; OPTIONAL
      },
      TagList => [
        {
          Key   => 'MyTagKey',             # min: 1, max: 128
          Value => 'MyTagValue',           # max: 256

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $ResourceSet    = $PutResourceSetResponse->ResourceSet;
    my $ResourceSetArn = $PutResourceSetResponse->ResourceSetArn;

    # Returns a L<Paws::FMS::PutResourceSetResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/fms/PutResourceSet>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceSet => L<Paws::FMS::ResourceSet>

Details about the resource set to be created or updated.E<gt>



=head2 TagList => ArrayRef[L<Paws::FMS::Tag>]

Retrieves the tags associated with the specified resource set. Tags are
key:value pairs that you can use to categorize and manage your
resources, for purposes like billing. For example, you might set the
tag key to "customer" and the value to the customer name or ID. You can
specify one or more tags to add to each Amazon Web Services resource,
up to 50 tags for a resource.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutResourceSet in L<Paws::FMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

