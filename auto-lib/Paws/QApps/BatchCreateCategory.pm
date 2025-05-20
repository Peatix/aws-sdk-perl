
package Paws::QApps::BatchCreateCategory;
  use Moose;
  has Categories => (is => 'ro', isa => 'ArrayRef[Paws::QApps::BatchCreateCategoryInputCategory]', traits => ['NameInRequest'], request_name => 'categories', required => 1);
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'instance-id', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BatchCreateCategory');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/catalog.createCategories');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QApps::BatchCreateCategory - Arguments for method BatchCreateCategory on L<Paws::QApps>

=head1 DESCRIPTION

This class represents the parameters used for calling the method BatchCreateCategory on the
L<QApps|Paws::QApps> service. Use the attributes of this class
as arguments to method BatchCreateCategory.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BatchCreateCategory.

=head1 SYNOPSIS

    my $data.qapps = Paws->service('QApps');
    $data . qapps->BatchCreateCategory(
      Categories => [
        {
          Title =>
            'MyBatchCreateCategoryInputCategoryTitleString',   # min: 1, max: 30
          Color => 'MyBatchCreateCategoryInputCategoryColorString'
          ,                  # min: 4, max: 7; OPTIONAL
          Id => 'MyUUID',    # OPTIONAL
        },
        ...
      ],
      InstanceId => 'MyInstanceId',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/data.qapps/BatchCreateCategory>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Categories => ArrayRef[L<Paws::QApps::BatchCreateCategoryInputCategory>]

The list of category objects to be created



=head2 B<REQUIRED> InstanceId => Str

The unique identifier of the Amazon Q Business application environment
instance.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BatchCreateCategory in L<Paws::QApps>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

